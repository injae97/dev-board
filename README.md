## ð¡ Board (CRUD)
- JSP + Tomcat 8.5 + Bootstrap 3.3 + MySQL + Eclipse IDE 

## ð¡ JDK 18 
https://www.oracle.com/java/technologies/javase/jdk18-archive-downloads.html

    - Windows x64 Installer 
    - JDK 8 ë²ì ì¼ë¡ ì¤ì¹ ì ì¬ë¶í í ì´í´ë¦½ì¤ ì¤ííë©´ ë²ì ì´ ë®ë¤ê³  ì¤í ìë¨ (18ë¡ ì¤ì¹í  ê²)


## ð¡ Env Setting
ìëì° > ìì¤í íê²½ ë³ì í¸ì§ > ê³ ê¸(í­) > íê²½ ë³ì 

    a. ìì¤í ë³ì ìì ìë¡ ë§ë¤ê¸° 
        - ë³ì ì´ë¦: JAVA_HOME
        - ë³ì ê° : C:\Program Files\Java\jdk1.8.0_351 (1ë²ìì ì¤ì¹í JDK ê²½ë¡)

    b. path   
        - C:\Program Files\Java\jdk1.8.0_351\bin ì¶ê°

## ð¡ Tomcat 8 
https://tomcat.apache.org/download-80.cgi

    - 64-bit Windows zip


## ð¡ Eclipse Download 
https://www.eclipse.org/downloads/

    - Eclipse IDE 2022â12 Install
    - Eclipse IDE for Enterprise Java and Web Developers 

## ð¡ Eclipse Run
    - Dynamic Web Project
        - Project Name : BBS
        - Target Runtime (tomcat ì¤ì )
            - New Runtime > Apache > ìê¹ 2ë²ìì ì¤ì¹í tomcat v8.5 > Tomcat directory ì¤ì  (C:\JSP\apache-tomcat-8.5.84)

## ð¡ JSP File Create & Run

    - BBS/src/main/webapp > index.jsp 
    - Run > Apache > Tomcat v8.5 Server > Finish


## ð¡ Bootstrap 3.3
https://getbootstrap.com/docs/3.3/getting-started/#download

    - Download Bootstrap
    - ìì¶ í´ì  í > ììê³µê°ì¼ë¡ css, font, js íì¼ ì´ë


## ð¡ MySQL
https://dev.mysql.com/downloads/installer/

    - Windows (x86, 32-bit), MSI Installer (431.7M)
    - ìì¶ í´ì  í ì¤í

## ð¡ MySQL jdbc driver Download & Setting
https://downloads.mysql.com/archives/c-j/

    - Download
        a. Operating System: Platform Independent
        b. Platform Independent (Architecture Independent), ZIP Archive (4.9M) íì¼ ë¤ì´ 
        c. ìì¶ í´ì  í mysql-connector-java-8.0.30 íì¼ë§ ë³µì¬
        d. wkspc\Board\src\main\webapp\WEB-INF\libì ë¶ì¬ ë£ê¸°

    - Setting
        - íë¡ì í¸ ì°í´ë¦­ > Properties > Java Build Path > Libraries > (Modulepath ì Classpath íë²ì© í´ë¦­í´ì¼ Add JARs íì±í ë¨) > Add JARs.. >   
