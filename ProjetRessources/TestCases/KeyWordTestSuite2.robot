*** Settings ***
Library    SeleniumLibrary  
Library    OperatingSystem   
Resource    ../Ressources/ressource2.robot 

*** Variables ***  
${browser} =    gc
${url} =    https://opensource-demo.orangehrmlive.com/index.php/auth/login  

*** Test Cases ***
TC_001
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    
    Open Browser and Maximize    ${browser}    ${url}
    