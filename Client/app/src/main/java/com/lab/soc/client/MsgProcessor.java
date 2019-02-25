package com.lab.soc.client;

import android.content.Context;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class MsgProcessor {
    private Callback mCallback;
    private List<String> changelogList = new ArrayList<String>();

    public void process(JSONObject json){
        StringBuilder sb = new StringBuilder();

        try{
            String index = json.getString(Constants.JSON.INDEX);
            String title = json.getString(Constants.JSON.TITLE);
            String version = json.getString(Constants.JSON.VERSION);
            String descp = json.getString(Constants.JSON.DESCRIPTION);

            JSONArray changelogs = json.getJSONArray(Constants.JSON.CHANGELOG);

            for(int i=0; i < changelogs.length(); i++){
                changelogList.add(changelogs.getString(i));
            }

            String file = json.getString(Constants.JSON.FILENAME);
            String date = json.getString(Constants.JSON.DATE);
            String checksum = json.getString(Constants.JSON.CHECKSUM);

            // get version from persistence storage
            HashMap<String,String> config = mCallback.getCurrentConfig();

            Repository temp = new Repository(index,title,version,descp,changelogList,file,date,checksum);

            // compare version if there is already a firmware installed
            debug("Json-Index:" + config.get(Constants.JSON.INDEX));
            if(config.get(Constants.JSON.INDEX) != null){
                // if new; init download
                if( Integer.parseInt(version) > Integer.parseInt(config.get(Constants.JSON.VERSION)) ){
                    //mCallback.printToTextBox(temp.toString());
                    mCallback.onUpdateAvailable(temp);
                }
                else {
                    mCallback.printToTextBox("No updates available! \r\n");
                }

            }else {
                //mCallback.printToTextBox(temp.toString());
                mCallback.onUpdateAvailable(temp);
            }


        } catch (JSONException e){
            e.printStackTrace();
        }
    }


    public void verifyBitstream(Repository repo){
        String hash = mCallback.calculateHash(repo.getFile());
        if(hash.equals(repo.getChecksum())){
            mCallback.onVerifiedBitstream(repo,true);
        }else{
            mCallback.onVerifiedBitstream(repo,false);
        }
    }


    public MsgProcessor(MsgProcessor.Callback callback){
        this.mCallback = callback;
        //add exception
    }

    public void debug(Object o) {
        System.out.println(o.toString());
    }

    public interface Callback{
        void onUpdateAvailable(Repository repo);
        void updateDB();
        HashMap<String,String> getCurrentConfig();
        void printToTextBox(String text);
        String calculateHash(String path);
        void onVerifiedBitstream(Repository repo,boolean valid);
    }

}
