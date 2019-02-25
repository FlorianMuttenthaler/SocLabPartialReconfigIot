package com.lab.soc.client;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.logging.Handler;

public class FabricManager {
    private Callback mCallback;
    private android.os.Handler mHandler;
    private byte[] buffer;
    private final RandomAccessFile hashDevice = null;



    public FabricManager(FabricManager.Callback callback){
        this.mCallback = callback;
        buffer = new byte[128];
        mHandler = new android.os.Handler();
        //add exception
    }


    // get hash from any file
    String calculateHashFromFile(final String filepath){

        Runnable getHash = new Runnable() {
            @Override
            public void run() {
                try{
                    // open device driver
                    RandomAccessFile hashDriver = new RandomAccessFile("placeholder_Blake2b.txt","rws"); // will be replaced with the device driver
                    // write absolute filepath to device driver
                    hashDriver.writeChars(filepath);
                    hashDriver.close(); // might not be needed to release the driver while waiting
                    //stall thread to wait for hardware calculation
                    Thread.currentThread();
                    Thread.sleep(100);
                    // open device driver and read the calculated HASH
                    hashDriver = new RandomAccessFile("placeholder_Blake2b.txt","rws");
                    hashDriver.read(buffer,0,128);
                    hashDriver.close();
                } catch (FileNotFoundException e){
                    e.printStackTrace();
                } catch (IOException e){
                    e.printStackTrace();
                } catch (InterruptedException e){
                    e.printStackTrace();
                }
            }
        };

        mHandler.post(getHash);

        return new String(buffer);
    }

    // load bitstream into the fabric
    void reconfigureFabric(final String filepath){

        Runnable reconfigFabric = new Runnable() {
            @Override
            public void run() {
                try{
                    // open device driver, write absolute path to bitstream
                    RandomAccessFile fabricDriver = new RandomAccessFile("placeholder_partialReconfig.txt","rws");
                    fabricDriver.writeChars(filepath);
                    fabricDriver.close();
                } catch (FileNotFoundException e){
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        };

        mHandler.post(reconfigFabric);
    }

    // load images into the fabric to be filtered
    void applyFilter(final String filepath){

        Runnable applyFilter = new Runnable() {
            @Override
            public void run() {
                try{
                    RandomAccessFile filterDriver = new RandomAccessFile("placeholder_filter.txt","rws");
                    filterDriver.writeChars(filepath);
                    filterDriver.close();
                    Thread.currentThread();
                    Thread.sleep(200);


                } catch (FileNotFoundException e){
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                } catch (InterruptedException e){
                    e.printStackTrace();
                }
            }
        };

        mHandler.post(applyFilter);
        mCallback.onFilterApplied(filepath);
    }





    public interface Callback{
        public void onFilterApplied(String filepath);
    }
}
