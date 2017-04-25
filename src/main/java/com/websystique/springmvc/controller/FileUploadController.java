package com.websystique.springmvc.controller;


import com.websystique.springmvc.AI.csv;
import com.websystique.springmvc.model.FileBucket;
import com.websystique.springmvc.model.MultiFileBucket;
import com.websystique.springmvc.util.FileValidator;
import com.websystique.springmvc.util.MultiFileValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class FileUploadController {

    private static String UPLOAD_LOCATION = "/Users/zhengshuai/";

    @Autowired
    FileValidator fileValidator;

    @Autowired
    MultiFileValidator multiFileValidator;

    @InitBinder("fileBucket")
    protected void initBinderFileBucket(WebDataBinder binder) {
        binder.setValidator(fileValidator);
    }

    @InitBinder("multiFileBucket")
    protected void initBinderMultiFileBucket(WebDataBinder binder) {
        binder.setValidator(multiFileValidator);
    }
//
//    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
//    public String getHomePage(ModelMap model) {
//        return "welcome";
//    }

//    @RequestMapping(value = "/singleUpload", method = RequestMethod.GET)
//    public String getSingleUploadPage(ModelMap model) throws IOException {
//        FileBucket fileModel = new FileBucket();
//        FileCopyUtils.copy(fileModel.getFile().getBytes(), new File(UPLOAD_LOCATION + fileModel.getFile().getOriginalFilename()));
////            String fileName = multipartFile.getOriginalFilename();
////            model.addAttribute("fileBucket", fileName);
//        model.addAttribute("fileBucket", fileModel.getFile().getOriginalFilename());
//        return "result";
//    }

    @RequestMapping(value = "/singleUpload", method = RequestMethod.POST)
    public String singleFileUpload(@Valid FileBucket fileBucket,
                                   BindingResult result, ModelMap model) throws Throwable {
        String rootPath = System.getProperty("catalina.home");
        File dir = new File(rootPath + File.separator + "tmpFiles");
        if (!dir.exists())
            dir.mkdirs();

        for (GrantedAuthority authority : SecurityContextHolder.getContext().getAuthentication().getAuthorities()) {
            String role = authority.getAuthority();
            System.out.println(role);
            if (!authority.getAuthority().equals("ROLE_ANONYMOUS")) {
                model.addAttribute("user", getPrincipal());

            }

        }

        UPLOAD_LOCATION = dir.getAbsolutePath() + File.separator;

        if (result.hasErrors()) {
            System.out.println("validation errors");
            return "index";
        } else {
            System.out.println("Fetching file");
            MultipartFile multipartFile = fileBucket.getFile();

            // Now do something with file...
            FileCopyUtils.copy(fileBucket.getFile().getBytes(), new File(UPLOAD_LOCATION + fileBucket.getFile().getOriginalFilename()));

            String[] input = new String[2];
            input[0] = UPLOAD_LOCATION + fileBucket.getFile().getOriginalFilename();
            input[1] = dir.getAbsolutePath()
                    + File.separator;
            new csv().csvmain(input);


            model.addAttribute("fileBucket", UPLOAD_LOCATION);
            return "result";
        }
    }

    @RequestMapping(value = "/multiUpload", method = RequestMethod.GET)
    public String getMultiUploadPage(ModelMap model) {
        MultiFileBucket filesModel = new MultiFileBucket();
        model.addAttribute("multiFileBucket", filesModel);
        return "multiFileUploader";
    }

    @RequestMapping(value = "/multiUpload", method = RequestMethod.POST)
    public String multiFileUpload(@Valid MultiFileBucket multiFileBucket,
                                  BindingResult result, ModelMap model) throws IOException {

        if (result.hasErrors()) {
            System.out.println("validation errors in multi upload");
            return "multiFileUploader";
        } else {
            System.out.println("Fetching files");
            List<String> fileNames = new ArrayList<String>();
            // Now do something with file...
            for (FileBucket bucket : multiFileBucket.getFiles()) {
                FileCopyUtils.copy(bucket.getFile().getBytes(), new File(UPLOAD_LOCATION + bucket.getFile().getOriginalFilename()));
                fileNames.add(bucket.getFile().getOriginalFilename());
            }

            model.addAttribute("fileNames", fileNames);
            return "multiSuccess";
        }
    }

    private String getPrincipal() {
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();


        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }

        return userName;
    }
}