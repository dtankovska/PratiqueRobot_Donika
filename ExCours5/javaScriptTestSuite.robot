*** Settings ***
Library    SeleniumLibrary  
Library    OperatingSystem      

*** Test Cases ***
TC_01_Ascenceurs
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    
    Open Browser    http://omayo.blogspot.com/  gc
    Maximize Browser Window
    Execute Javascript    window.scrollTo(0,1500)
    Execute Javascript    alert("Salut tout le monde !")
    Sleep    5s   
    Close Browser
    
TC_02_Ascenceurs
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    
    Open Browser     