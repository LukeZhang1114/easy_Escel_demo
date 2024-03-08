package com.example.exceldemo.sercice;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;

public interface EtaoService {
    /**
     * 导入数据
     * @param file 文件
     */
    void importUserInfo(MultipartFile file);

    /**
     * 导出数据
     */
    void exportEmployeeExcel(HttpServletResponse response);
}
