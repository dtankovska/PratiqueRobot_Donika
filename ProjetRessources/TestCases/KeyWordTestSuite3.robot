*** Settings ***
Library    SeleniumLibrary  
Library    OperatingSystem   
Resource    ../Ressources/ressource3.robot   

*** Variables ***
${browser} =    gc
${url} =    https://opensource-demo.orangehrmlive.com/index.php/auth/login

*** Test Cases ***
TC_001
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    
    ${reponse} =    Open Browser and Maximize    https://opensource-demo.orangehrmlive.com/index.php/auth/login    gc
    