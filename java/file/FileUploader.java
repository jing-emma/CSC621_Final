/*
 * Handle file uploading
 */
package file;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jing Zhao
 */
public class FileUploader {
    
    /*public static void upload(InputStream in, String dir, String fileName){
        
        byte[] dataBuffer = new byte[BUFFERSIZE];
        try {
            File path = new File(dir);
            if(!path.isDirectory()){
                if(!path.mkdirs()){
                    Logger.getLogger(FileUploader.class.getName()).log(Level.SEVERE, null, "Failed to create directory");
                    
                }
            }
            File saveFile = new File(path, fileName);
            FileOutputStream out = new FileOutputStream(saveFile);
            int receivedBytes = 0;
            int bytes;
            while((bytes = in.read(dataBuffer, 0, BUFFERSIZE)) != -1){
                out.write(dataBuffer, 0, bytes);

            }
            out.close();
            
            
        } catch (IOException ex) {
            Logger.getLogger(FileUploader.class.getName()).log(Level.SEVERE, null, ex);
        }
    }*/
    public static String upload(InputStream in, String contentType, int contentLength, String dir){
        try {
            
        	byte dataBytes[] = new byte[contentLength];
        	int byteRead = 0;
        	int totalBytesRead = 0;
        	while (totalBytesRead < contentLength) {
        	byteRead = in.read(dataBytes, totalBytesRead, contentLength);
        	totalBytesRead += byteRead;
        	}
        	
        	String file = new String(dataBytes);
            String saveFile = file.substring(file.indexOf("filename=\"") + 10);
            saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
            saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
            
            int lastIndex = contentType.lastIndexOf("=");
            String boundary = contentType.substring(lastIndex + 1,contentType.length());
            
            int pos;
            pos = file.indexOf("filename=\"");
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;


            int boundaryLocation = file.indexOf(boundary, pos) - 4;
            int startPos = ((file.substring(0, pos)).getBytes()).length;
            int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
            File path = new File(dir);
            if(!path.isDirectory()){
                if(!path.mkdirs()){
                    Logger.getLogger(FileUploader.class.getName()).log(Level.SEVERE, null, "Failed to create directory");
                    
                }
            }
            File fileObj = new File(path, saveFile);
            FileOutputStream out = new FileOutputStream(fileObj);
            out.write(dataBytes, startPos, (endPos - startPos));
            out.close();
            return saveFile;
            
        } catch (IOException ex) {
            Logger.getLogger(FileUploader.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
