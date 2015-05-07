package com.antra.util;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

/**
 * Multipart file upload helper class
 * @author Lester
 *
 */
@Component
public class UploadFileHandler {
	@Autowired
	private ServletContext context;
	@Value("${resource.img}")
	private String imgPath;
	
	/**
	 * Save the file into local drive
	 * @param file uploaded file
	 */
	public void save(MultipartFile file){
		String resourcePath = context.getRealPath(imgPath);
		File resourceFolder=new File(resourcePath);
		int count=resourceFolder.listFiles().length+1;
		File f=new File(resourcePath+"/"+count+".jpg");
		try {
			file.transferTo(f);
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
	}
	
	/**
	 * Delete file on local server
	 * @param id image id# to be deleted
	 */
	@Secured("ROLE_ADMIN")
	public void delete(int id){
		String resourcePath = context.getRealPath(imgPath);
		String fullPath = resourcePath+File.separator+id+".jpg";
		File f=new File(fullPath);
		f.delete();
		int count=getCount()+1;
		if(id!=count){
			fullPath = resourcePath+File.separator+count+".jpg";
			File f2=new File(fullPath);
			f2.renameTo(f);
		}
	}
	
	/**
	 * Return count if images so that we can generate serial image names
	 * @return count of images
	 */
	public int getCount(){
		String resourcePath = context.getRealPath(imgPath);
		File resourceFolder=new File(resourcePath);
		return resourceFolder.listFiles().length;
	}
}
