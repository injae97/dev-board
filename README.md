## 💡 Board
Web development - Create Bulletin Board (CRUD)
* JDK 18 / Tomcat v8.5 / Eclipse IDE


## 💡 JDK 18 
https://www.oracle.com/java/technologies/javase/jdk18-archive-downloads.html

    - Windows x64 Installer 
    
    * JDK 8 버전으로 설치 시 재부팅 후 이클립스 실행하면 버전이 낮다고 실행 안됨 (18로 설치할 것)

* 환경변수 설정 
윈도우 > 시스템 환경 변수 편집 > 고급(탭) > 환경 변수 
    a. 시스템 변수 에서 새로만들기 
        - 변수 이름: JAVA_HOME
        - 변수 값 : C:\Program Files\Java\jdk1.8.0_351  (1번에서 설치한 JDK 경로)

    b. path 추가  
        - C:\Program Files\Java\jdk1.8.0_351\bin 추가


## 💡 Tomcat 8 
https://tomcat.apache.org/download-80.cgi

    - 64-bit Windows zip


## 💡 Eclipse Download 
https://www.eclipse.org/downloads/

    - Eclipse IDE 2022‑12 Install
    - Eclipse IDE for Enterprise Java and Web Developers 

## 💡 Eclipse Run
    - Dynamic Web Project 
    
        - Project Name : BBS 
        - Target Runtime (tomcat 설정)
            - New Runtime > Apache > 아까 2번에서 설치한 tomcat v8.5 > Tomcat directory 설정 (C:\JSP\apache-tomcat-8.5.84)

## 💡 JSP File Create & Run

    - BBS/src/main/webapp > index.jsp 
    - Run > Apache > Tomcat v8.5 Server > Finish

