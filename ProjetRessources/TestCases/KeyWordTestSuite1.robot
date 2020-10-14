*** Settings ***
Library    SeleniumLibrary  
Library    OperatingSystem   
Resource    ../Ressources/ressource1.robot   

*** Test Cases ***
TC_001
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    
    Open Browser and Maximize
    