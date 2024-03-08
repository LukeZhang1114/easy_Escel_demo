package com.example.exceldemo.util;

import org.springframework.core.io.ClassPathResource;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.charset.StandardCharsets;

/**
 * @author DELL
 */
public class FileUtil {

    public static void downloadFile(String fileName, HttpServletResponse response) {
        ClassPathResource classPathResource = new ClassPathResource(fileName);
        try (OutputStream os = response.getOutputStream();
             BufferedInputStream bis = new BufferedInputStream(classPathResource.getInputStream());) {

            response.setCharacterEncoding("UTF-8");
            response.setContentType("application/vnd.ms-excel");
            String fileName1 = classPathResource.getURI().toString().substring(classPathResource.getURI().toString().lastIndexOf("/") + 1);
            response.setHeader("content-disposition", "attachment;filename=" + fileName1);
            response.flushBuffer();
            byte[] buffer = new byte[1024];
            int i = bis.read(buffer);
            while (i != -1) {
                os.write(buffer, 0, i);
                i = bis.read(buffer);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
