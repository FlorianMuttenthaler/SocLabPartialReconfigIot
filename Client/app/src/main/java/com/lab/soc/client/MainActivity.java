package com.lab.soc.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import org.json.JSONObject;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashMap;

// todo : ip field, cleanup, debug on hardware, comments


public class MainActivity extends AppCompatActivity implements NetworkManager.Callback,MsgProcessor.Callback,FabricManager.Callback, View.OnClickListener {
    private FragmentManager mFragManager;
    private NetworkManager mNetworkFragment;
    private MsgProcessor mMsgProcessor;
    private FabricManager mFabricManager;
    private TextView mConsole;
    private Button mButtonConnect;
    private Button mButtonFilter;

    private ImageView mImageView;
    private Bitmap mBitmap;
    private SharedPreferences mSharedPref;
    private boolean download;

    private String preProcessedBitmap = "bitmapARGB.bin";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mSharedPref = this.getPreferences(Context.MODE_PRIVATE);

        mConsole = (TextView) findViewById(R.id.textView);
        mConsole.setMovementMethod(new ScrollingMovementMethod());
        mButtonConnect = (Button) findViewById(R.id.button);
        mButtonFilter = (Button) findViewById(R.id.button2);
        mImageView = (ImageView) findViewById(R.id.imageView);
        mBitmap = ((BitmapDrawable)mImageView.getDrawable()).getBitmap();

        mNetworkFragment = new NetworkManager();
        mMsgProcessor = new MsgProcessor(this);
        mFabricManager = new FabricManager(this);

        mFragManager = getSupportFragmentManager();
        mFragManager.beginTransaction().add(mNetworkFragment,"NetworkManager").commit();

        mNetworkFragment.configure("http://10.0.2.2:5000/api/","SOC-LAB-IOT");

        mButtonConnect.setOnClickListener(this);
        mButtonFilter.setOnClickListener(this);

        download = false;

    }


    @Override
    protected void onResume() {
        super.onResume();
    }


    @Override
    protected void onStop() {
        super.onStop();
    }


    @Override
    protected void onDestroy() {
        super.onDestroy();
        mNetworkFragment.onDetach();
        mNetworkFragment = null;
        mMsgProcessor = null;
        mFragManager = null;
    }

    @Override
    public void onClick(View v) {
        switch(v.getId()){
            case R.id.button:
                if(!download){
                    mNetworkFragment.getUpdate();
                }
                break;
            case R.id.button2:
                preProcessBitmap(preProcessedBitmap);
                mFabricManager.applyFilter( this.getFilesDir() + preProcessedBitmap);
                break;
            default:
                break;
        }
    }

    private void saveConfig(Repository repository){
        SharedPreferences.Editor editor = mSharedPref.edit();
        editor.putString(Constants.JSON.INDEX,repository.getIndex());
        editor.putString(Constants.JSON.VERSION,repository.getVersion());
        editor.putString(Constants.JSON.DATE,repository.getDate());
        editor.putString(Constants.JSON.CHECKSUM,repository.getChecksum());
        editor.commit();
    }


    private HashMap<String,String> getConfig(){
        HashMap<String,String> dict = new HashMap<String,String>();
        dict.put(Constants.JSON.INDEX,mSharedPref.getString(Constants.JSON.INDEX,null));
        dict.put(Constants.JSON.VERSION,mSharedPref.getString(Constants.JSON.VERSION,null));
        dict.put(Constants.JSON.DATE,mSharedPref.getString(Constants.JSON.DATE,null));
        dict.put(Constants.JSON.CHECKSUM,mSharedPref.getString(Constants.JSON.CHECKSUM,null));

        return dict;
    }

    private void preProcessBitmap(String filepath){
        int height = mBitmap.getHeight();
        int width = mBitmap.getWidth();

        int[] buffer = new int[height*width];
        mConsole.append("W: " + width + "H: " + height);
        mBitmap.getPixels(buffer,0,width,0,0,width,height);
        try{
            RandomAccessFile bitmap = new RandomAccessFile(this.getFilesDir()+filepath,"rws");

            for(int i:buffer){
                bitmap.writeInt(i);
            }
            bitmap.close();
            mConsole.append("Bitmap processed\r\n");
            mConsole.append("Bitmap saved\r\n");
        } catch (IOException e){
            e.printStackTrace();
        }
    }

    private void loadBitmap(String filepath){
        int height = mBitmap.getHeight();
        int width = mBitmap.getWidth();

        int[] buffer = new int[height*width];

        try{
            RandomAccessFile bitmap = new RandomAccessFile(this.getFilesDir()+filepath,"rws");

            for(int i:buffer){
                i = bitmap.readInt();
            }

            bitmap.close();

            mBitmap.setPixels(buffer,0,width,0,0,width,height);

        } catch (IOException e){
            e.printStackTrace();
        }
    }

    private void printDebug(String text){
        mConsole.append(text);
    }

    //Network manager callback interface:

    @Override
    public void onWifiEnabled(boolean wifi) {
        if(wifi){
            mConsole.append("wifi is enabled");
        }else{
            mConsole.append("wifi is disabled");
        }
    }

    @Override
    public void onDataAvailable(JSONObject json) {
        mMsgProcessor.process(json);
    }

    @Override
    public void printToTextBox(String text) {
        printDebug(text);
    }

    @Override
    public void onDownloadComplete(Repository repo) {
        download = false;
        Toast.makeText(this.getApplicationContext(),"Download complete", Toast.LENGTH_LONG).show();
        mConsole.append("\r\nDownload Complete\r\n");
        mMsgProcessor.verifyBitstream(repo);
    }

    // Message Processor callback interface
    @Override
    public void onUpdateAvailable(Repository repo) {
        //init download
        download = true;
        mConsole.append("\r\n"+ repo.toString());
        saveConfig(repo);
        mNetworkFragment.download(repo,repo.getFile());
    }

    @Override
    public String calculateHash(String path) {
        return mFabricManager.calculateHashFromFile(path);
    }

    @Override
    public void onVerifiedBitstream(Repository repo, boolean valid) {
        if(valid){
            mConsole.append("Bitstream integrity verified\r\n");
            mConsole.append("Reconfigure fabric\r\n");
            mFabricManager.reconfigureFabric(repo.getFile());
        }else{
            Toast.makeText(this.getApplicationContext(),"Bitstream corrupted\r\n", Toast.LENGTH_LONG).show();
            //repeat download
        }
    }

    @Override
    public void updateDB() {

    }

    @Override
    public HashMap<String, String> getCurrentConfig() {
        return getConfig();
    }


    /// FABRIC MANAGER CALLBACKS
    @Override
    public void onFilterApplied(String filepath) {
        loadBitmap(filepath);
    }
}
