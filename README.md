# SeniorProject
Made by Shuai Zheng Advisor: Prof. Homayoun Yousefi'zadeh

Prerequement:


To simulate the website, below are required:

1. Java JDK 1.8
    Can be downloaded from webite: 
    http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
   
2. IntelliJ [Ultimate] Edition, which is cross platform IDEA and could be used in Windows, Mac, Linux system
    Can be acquired using student account and download at:
    https://www.jetbrains.com/idea/

3. Apache Tomcat 8
    Can be downloaded from website:
    http://tomcat.apache.org/download-80.cgi
  
Usage:


With above preparation done, simulate the website with following steps:


1.  Open IntelliJ IDEA, Click "Import Project".
    ![idea_00](https://cloud.githubusercontent.com/assets/23114334/21919800/08b9a5f6-d912-11e6-8427-1ae2bb9c61ad.png)

2.  Choose the Project folder you've saved to, click "OK".
    below is the example location that I used.
    ![idea_01](https://cloud.githubusercontent.com/assets/23114334/21919819/211a6b30-d912-11e6-9244-00bc0618fbdc.png)

3.  Choose Maven, click "next"
    ![idea_02](https://cloud.githubusercontent.com/assets/23114334/21919879/6f392626-d912-11e6-8b04-2001fc08cf5d.png)

4.  Check the box in front of "Import Maven projects automatically"
    ![idea_03](https://cloud.githubusercontent.com/assets/23114334/21919891/7994532a-d912-11e6-9a75-805b9716a0c4.png)
    ![idea_03a](https://cloud.githubusercontent.com/assets/23114334/21919910/8a92d57a-d912-11e6-9930-04006ef44fea.png)

5.  Click "next"

    ![idea_04](./img/1.png)

6.  Click the "+" bottom, choose "JDK"


7.  Choose the jdk 1.8 file folder you saved to.
    ![idea_06](./img/2.png)

8.  Click "OK"


9.  Click "finish"

    ![idea_08](./img/3.png)

10. On the top right corner, click the second icon, press "Edit Configurations"
    ![idea_09](https://cloud.githubusercontent.com/assets/23114334/21919988/2d9a51d0-d913-11e6-97ed-d0be819947b7.png)

11. Click the "+" bottom, choose Tomcat Server - Local.
    Note that if you are using Community version of IntelliJ, you won't have this option.
    So make sure you are using the Ultimate version.
    ![idea_10](./img/4.png)

    To Run MachineLearning, add VM Option in IntelliJ.

12.  click configure, click +, and select the path that Tomcat download :
    ![idea_40](./img/5.png)

13.  Copy and paste VM Option, click "OK"
click the fix button to select war exploded:
    ![idea_41](./img/6.png)

    now you should be able to run Machine Learning algorithm.

14. click ok.
    ![idea_11](./img/7.png)

15. click button to run

    ![idea_13](./img/8.png)

16. Demo
    ![idea_14](./img/9.png)

17. menu in the location src/main/webapp/WEB-INF/views/tiles/template/defaultHeader.jsp from line 29-59
    ![idea_15](./img/10.png)
18. image in the location src/main/webapp/static/images/slider from image 1-3
    ![idea_16](./img/11.png)
    
19. logo in the location src/main/webapp/static/images/logo.png
    ![idea_17](./img/12.png)
20. about us in the src/main/webapp/WEB-INF/views/pages/tiles/index.jsp from line 106-168
   ![idea_18](./img/13.png)
   
21. product in the src/main/webapp/WEB-INF/views/pages/tiles/index.jsp from line 196-315 and images in the location src/main/webapp/static/images/featured-work
   ![idea_19](./img/14.png)
   
22. partners in the src/main/webapp/WEB-INF/views/pages/tiles/index.jsp from line 318-349 and images in the location src/main/webapp/static/images/logos
   ![idea_20](./img/15.png)
   
23. people in the src/main/webapp/WEB-INF/views/pages/tiles/index.jsp from line 352-437 and images in the location src/main/webapp/static/images/images
   ![idea_21](./img/16.png)
   
24. contact us in the src/main/webapp/WEB-INF/views/pages/tiles/index.jsp from line 555-603

   ![idea_24](./img/17.png)
   
25. Footer in the src/main/webapp/WEB-INF/views/tiles/template/defaultFooter.jsp from line 1-67
   ![idea_23](./img/18.png)
  
   # References:
    
   deeplearning4j:https://deeplearning4j.org/

