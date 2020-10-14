*** Settings ***
Library    SeleniumLibrary 
Library    OperatingSystem       


*** Variables ***
${url} =  https://login.salesforce.com/?locale=ca
${browser} =  gc

*** Test Cases ***
TC_001
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    3s
    Input Text    id=username    test1
    Input Password    id=password    test2        
    # Supprimer du text dans les champs
    Clear Element Text    id=username
    Click Link    locator    