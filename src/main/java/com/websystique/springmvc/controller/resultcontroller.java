package com.websystique.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;


/**
 * Created by Shuai Zheng on 4/23/17.
 */
@Controller
public class resultcontroller {
    //todo debug
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public
    @ResponseBody
    String uploadFileHandler(
            @RequestParam("file") MultipartFile file, ModelMap model, @RequestParam("name") String name) {


        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();

                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.home");
                File dir = new File(rootPath + File.separator + "tmpFiles");
                if (!dir.exists())
                    dir.mkdirs();

                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + file.getOriginalFilename());
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                System.out.printf("Server File Location="
                        + serverFile.getAbsolutePath());


                String[] input = new String[2];
                input[0] = dir.getAbsolutePath()
                        + File.separator + file.getOriginalFilename();
                input[1] = dir.getAbsolutePath()
                        + File.separator;
//todo machine learning
//                (new d()).a(input);

                model.addAttribute("username", name);
                model.addAttribute("download", dir.getAbsolutePath()
                        + File.separator + "output.txt");

//
                String outputaddr = dir.getAbsolutePath()
                        + File.separator + "output.txt";
                //todo database
                //System.out.println(outputaddr);
//                String outputaddr = request.getSession().getServletContext().getRealPath("") + File.separator + "output.txt";
                //System.out.println(outputaddr);

//                Connection connection = null;
//                String username = (String)request.getSession().getAttribute("username");
//                String username = name;
//                try {
//                    connection = ConnectionConfig.getConnection();
//                    if (connection != null) {
//                        System.out.println("Connection established.");
//                        int last_id = CheckTable(connection, username);
//                        writeBlob(connection, outputaddr, last_id, username);
//                    } else {
//                        System.out.println("Connection failed.");
//                    }
//                } catch (Exception e) {
//                    e.printStackTrace();
//                } finally {
//                    if (connection != null) {
//                        try {
//                            connection.close();
//                        } catch (SQLException e) {
//                            e.printStackTrace();
//                        }
//                    }
//                }


                return "result";

            } catch (Exception e) {

                return "index";

//                return "You failed to upload " + file.getOriginalFilename() + " => " + e.getMessage();
            }
        }
        return "index";

    }

}
