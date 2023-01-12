<<<<<<< HEAD
## 💡 Board (CRUD)
- JSP + Tomcat 8.5 + Bootstrap 3.3 + MySQL + Eclipse IDE 

## 💡 JDK 18 
https://www.oracle.com/java/technologies/javase/jdk18-archive-downloads.html

    - Windows x64 Installer 
    - JDK 8 버전으로 설치 시 재부팅 후 이클립스 실행하면 버전이 낮다고 실행 안됨 (18로 설치할 것)


## 💡 Env Setting
윈도우 > 시스템 환경 변수 편집 > 고급(탭) > 환경 변수 

    a. 시스템 변수 에서 새로 만들기 
        - 변수 이름: JAVA_HOME
        - 변수 값 : C:\Program Files\Java\jdk1.8.0_351 (1번에서 설치한 JDK 경로)

    b. path   
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


## 💡 Bootstrap 3.3
https://getbootstrap.com/docs/3.3/getting-started/#download

    - Download Bootstrap
    - 압축 해제 후 > 작업공간으로 css, font, js 파일 이동


## 💡 MySQL
https://dev.mysql.com/downloads/installer/

    - Windows (x86, 32-bit), MSI Installer (431.7M)
    - 압축 해제 후 실행

## 💡 MySQL jdbc driver Download & Setting
https://downloads.mysql.com/archives/c-j/

    - Download
        a. Operating System: Platform Independent
        b. Platform Independent (Architecture Independent), ZIP Archive (4.9M) 파일 다운 
        c. 압축 해제 후 mysql-connector-java-8.0.30 파일만 복사
        d. wkspc\Board\src\main\webapp\WEB-INF\lib에 붙여 넣기

    - Setting
        - 프로젝트 우클릭 > Properties > Java Build Path > Libraries > (Modulepath 와 Classpath 한번씩 클릭해야 Add JARs 활성화 됨) > Add JARs.. >     
=======
# dev-board
dev-board-repo
>>>>>>> 767f2f1c3c8831cc00c9a124358986fa188e2e3a
