package com.example.exceldemo.controller;

import cn.hutool.core.util.StrUtil;
import com.example.exceldemo.util.FileUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

/**
 * 电信模板文件下载控制器
 * @author DELL
 */
@Slf4j
@RequestMapping("/luke/user")
@RestController
public class FileDownloadController {

    static final String TEMPLATE_FILE_PATH = "excelTemplate/";

    /**
     * @param fileName 模板名，将文件放到excelTemplate目录下
     * @param response
     */
    @GetMapping("/download/{fileName}")
    public void download(@PathVariable("fileName") String fileName, HttpServletResponse response) {
        if (StrUtil.isBlank(fileName)) {
            log.error("fileName is null");
            return;
        }
        try {
            if (fileName.equalsIgnoreCase("user")) {
                fileName = "用户导入模板.xlsx";
            }
            FileUtil.downloadFile(TEMPLATE_FILE_PATH + fileName, response);
        } catch (Exception e) {
            log.error("下载文件失败", e);
        }
    }


}
