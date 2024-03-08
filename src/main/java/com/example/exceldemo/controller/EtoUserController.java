package com.example.exceldemo.controller;

import com.baomidou.mybatisplus.extension.api.R;
import com.example.exceldemo.exception.BusinessException;
import com.example.exceldemo.sercice.EtaoService;
import com.example.exceldemo.util.CommonResult;
import com.example.exceldemo.util.FileUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.example.exceldemo.controller.FileDownloadController.TEMPLATE_FILE_PATH;

@RestController
@RequestMapping("/luke/user")
@Slf4j
public class EtoUserController {
    @Autowired
    private EtaoService etaoService;

    @PostMapping("/submitBatchUser")
    public CommonResult submitBatchUser(@RequestParam("file") MultipartFile file) {
        etaoService.importUserInfo(file);
        return CommonResult.success();
    }

    @GetMapping("/exportEmployeeExcel")
    public CommonResult exportEmployeeExcel(HttpServletResponse response) {
        etaoService.exportEmployeeExcel(response);
        return CommonResult.success();
    }
}
