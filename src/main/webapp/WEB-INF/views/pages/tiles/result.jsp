<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.FileReader" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Author: Shuai Zheng
  Date: 11/22/16
  Time: 11:45 PM
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%--
  Author: Shuai Zheng
  Date: 4/23/17
  Time: 11:19 PM
--%>
<style>
    #logincontainer {
        padding-top: 10%;
        text-align: center;
        text-shadow: 0px 4px 3px rgba(0, 0, 0, 0.4),
        0px 8px 13px rgba(0, 0, 0, 0.1),
        0px 18px 23px rgba(0, 0, 0, 0.1);
    }
</style>

<section id="login" class="clean-section-wrapper background-one">
    <div class="container" id="logincontainer">
        <div class="row">

            <!-- Section Header -->
            <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                <h1><span class="clean-color-contras">RESULT</span></h1>
                <div class="clean-line"></div>


                <div class="row">
                    <div>
                        <div class="content">
                            <%
                                String rootPath = System.getProperty("catalina.home");
                                File dir = new File(rootPath + File.separator + "tmpFiles");
//                    String outputAddr = session.getServletContext().getRealPath("/");
                                String fileName = dir.getAbsolutePath()
                                        + File.separator + "output.txt";
//    String fileName=request.getSession().getServletContext().getRealPath("") + File.separator + "output.txt";
                                try {
                                    //Create object of FileReader
                                    FileReader inputFile = new FileReader(fileName);
                                    //Instantiate the BufferedReader Class
                                    BufferedReader bufferReader = new BufferedReader(inputFile);
                                    //Variable to hold the one line data
                                    String line;
                                    // Read file line by line and print on the console
                                    while ((line = bufferReader.readLine()) != null) {
                                        out.print("<h5>\n" + line + "<h5/>");
                                    }
                                    //Close the buffer reader
                                    bufferReader.close();
                                } catch (Exception e) {
                                    System.out.println("Error while reading file line by line:" + e.getMessage());
                                }
                            %>


                        </div>
                    </div>
                </div>


            </div>

        </div>
    </div>
</section>



