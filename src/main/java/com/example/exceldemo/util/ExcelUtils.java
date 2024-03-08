package com.example.exceldemo.util;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.write.handler.WriteHandler;
import com.alibaba.excel.write.metadata.WriteSheet;
import lombok.extern.slf4j.Slf4j;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.List;

/**
 * excel工具类
 */
@Slf4j
public class ExcelUtils {
    /**
     * 导出Excel(一个sheet)
     *
     * @param response  HttpServletResponse
     * @param list      数据list
     * @param fileName  导出的文件名
     * @param sheetName 导入文件的sheet名
     * @param clazz     实体类
     */
    public static <T> void writeExcel(HttpServletResponse response,
                                      List<T> list,
                                      String fileName,
                                      String sheetName,
                                      Class<T> clazz) throws Exception{
        response.setContentType("application/vnd.ms-excel");
        response.setCharacterEncoding("utf-8");
        response.setHeader("Content-disposition", "attachment;filename=" + URLEncoder.encode(fileName,"UTF-8") + ".xlsx");
        ExcelWriter excelWriter = EasyExcel.write(response.getOutputStream(), clazz).build();
        WriteSheet writeSheet = EasyExcel.writerSheet(sheetName).build();
        excelWriter.write(list, writeSheet);
        excelWriter.finish();
    }

    /**
     * 导出Excel(一个sheet)，需要传入一个excel单元格内容处理器
     *
     * @param response  HttpServletResponse
     * @param list      数据list
     * @param fileName  导出的文件名
     * @param sheetName 导入文件的sheet名
     * @param clazz     实体类
     * @param writeHandler excel单元格内容处理器
     */
    public static <T> void writeExcel(HttpServletResponse response,
                                      List<T> list,
                                      String fileName,
                                      String sheetName,
                                      Class<T> clazz,
                                      WriteHandler writeHandler) throws Exception{
        response.setContentType("application/vnd.ms-excel");
        response.setCharacterEncoding("utf-8");
        response.setHeader("Content-disposition", "attachment;filename=" + URLEncoder.encode(fileName,"UTF-8") + ".xlsx");
        ExcelWriter excelWriter = EasyExcel.write(response.getOutputStream(), clazz).registerWriteHandler(writeHandler).build();
        WriteSheet writeSheet = EasyExcel.writerSheet(sheetName).build();
        excelWriter.write(list, writeSheet);
        excelWriter.finish();
    }

    /**
     * 构建ExcelWriter对象
     *
     * @param response  HttpServletResponse
     * @param fileName  导出的文件名
     * @param clazz     实体类
     */
    public static <T> ExcelWriter buildExcelWriter(HttpServletResponse response,
                                                   String fileName,
                                                   Class<T> clazz) throws Exception{
        response.setContentType("application/vnd.ms-excel");
        response.setCharacterEncoding("utf-8");
        response.setHeader("Content-disposition", "attachment;filename=" + URLEncoder.encode(fileName,"UTF-8") + ".xlsx");
        ExcelWriter excelWriter = EasyExcel.write(response.getOutputStream(), clazz).build();
        return excelWriter;
    }
}

