*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary

*** Test Cases ***
TC_01_LoginTest
    
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    
    LoginKeyWords
    Sleep    1s    
    #Open Browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login  gc
    #Maximize Browser Window
    Input Text    id=txtUsername    Admin
    #Input Text    id=txtPassword   admin123
    Click Button    id=btnLogin 
    Sleep    5s               
    #Click Element    id=welcome
    #Sleep    3s  
    LogoutKeyWords  
    #Click Element    link=Logout    
    #Click Link    index.php/auth/logout   
    #Click Element    xpath=//a[@href='/index.php/auth/logout']    
    Open Browser    https://www.google.com  gc
    Close All Browsers
    

    
TC_02_GoBackTest
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    LoginKeyWords
    Click Button    id=btnLogin 
    Sleep    3s 
    Capture Page Screenshot    ./Screenshots/captureTest.png
    LogoutKeyWords
    Go To    https://www.google.ca  #se connecter et ensuite aller sur google.ca
    Close All Browsers
    
*** Keywords ***
LoginKeyWords
    Open Browser    https://opensource-demo.orangehrmlive.com/index.php/auth/login  gc
    Maximize Browser Window
      Input Text    id=txtUsername    Admin  
      Set Selenium Speed    3s
    Input Text    id=txtPassword   admin123
   
LogoutKeyWords
    Click Element    id=welcome
    Sleep    3s 
    #Click Element    xpath=//a[@href='/index.php/auth/logout']  
    Click Element    link=Logout    
      
    
    
    