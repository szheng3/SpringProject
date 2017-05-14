# SeniorProject
Made by Shuai Zheng Advisor: Prof. Homayoun Yousefi'zadeh

Prerequement:


To simulate the website, below are required:

1. Java JDK 1.7
    Can be downloaded from webite: 
    http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html
    ![Screenshot](https://cloud.githubusercontent.com/assets/23114334/21918854/6b1d50d8-d90a-11e6-9f40-eef8acdaa23f.png)
   
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


7.  Choose the jdk 1.7 file folder you saved to.
        below is the example location of my jdk 1.7.0_80
        ![idea_06](https://cloud.githubusercontent.com/assets/23114334/21919952/eed99938-d912-11e6-9c19-124d4f84600f.png)

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
    ![idea_41](./img/20.png)

    now you should be able to run Machine Learning algorithm.

14. click ok.
    ![idea_11](./img/7.png)

15. click button to run

    ![idea_13](./img/8.png)

# Deploy to the third party
16. Build Artifacts
    ![idea_50](./img/50.png)

17. click Build and generate .war file
    ![idea_51](./img/51.png)

18. go to https://console.aws.amazon.com and then create a free account (account creation process may be changed since it uses 2-step verification).

19. sign in to Amazon AWS from https://console.aws.amazon.com and find "ElasticBeans Talk" under "Deployment & Management".
    ![idea_52](./img/52.png)


20. After that you may see an empty page, just click "Create a new Application" from right corner side of the page. Enter your information and then just simply click your new created environment.
    ![idea_53](./img/53.png)
    

21. After that you can upload and deploy ".war" files to this free account.
    ![idea_53](./img/54.png)
    
22. access web pages in a browser after running the content in a third party serve. My Demo  Sample-env-2.xmxbdjuc3w.us-west-2.elasticbeanstalk.com 
    ![idea_55](./img/70.png)


# References:
    
1. deeplearning4j:https://deeplearning4j.org/
2. Spring 4 MVC+Apache Tiles 3 Example: http://websystique.com/springmvc/spring-4-mvc-apache-tiles-3-annotation-based-example/


