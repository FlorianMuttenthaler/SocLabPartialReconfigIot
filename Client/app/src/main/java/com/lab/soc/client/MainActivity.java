package com.lab.soc.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import org.json.JSONObject;
import java.util.HashMap;

// todo : write fabric interaction, check md5 hash, cleanup


public class MainActivity extends AppCompatActivity implements NetworkManager.Callback,MsgProcessor.Callback, View.OnClickListener {
    private FragmentManager mFragManager;
    private NetworkManager mNetworkFragment;
    private MsgProcessor mMsgProcessor;
    private TextView mConsole;
    private Button mButton;
    private SharedPreferences mSharedPref;
    private boolean download;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mSharedPref = this.getPreferences(Context.MODE_PRIVATE);

        mConsole = (TextView) findViewById(R.id.textView);
        mConsole.setMovementMethod(new ScrollingMovementMethod());
        mButton = (Button) findViewById(R.id.button);

        mNetworkFragment = new NetworkManager();
        mMsgProcessor = new MsgProcessor(this);

        mFragManager = getSupportFragmentManager();
        mFragManager.beginTransaction().add(mNetworkFragment,"NetworkManager").commit();

        mNetworkFragment.configure("http://10.0.2.2:5000/api/","SOC-LAB-IOT");

        mButton.setOnClickListener(this);

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
    public void onDownloadComplete() {
        download = false;
        Toast.makeText(this.getApplicationContext(),"Download complete", Toast.LENGTH_LONG).show();
       // mConsole.append("\r\nDownload Complete\r\n");
    }

    // Message Processor callback interface
    @Override
    public void onUpdateAvailable(Repository repo) {
        //init download
        download = true;
        mConsole.append("\r\n"+ repo.toString());
        mNetworkFragment.download(repo,repo.getFile());

    }

    @Override
    public void updateDB() {

    }

    @Override
    public HashMap<String, String> getCurrentConfig() {
        return getConfig();
    }

}
