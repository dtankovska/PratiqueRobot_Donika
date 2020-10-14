*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Variables ***
${browser} =  gc
${url} =  https://opensource-demo.orangehrmlive.com/index.php/auth/login

*** Keywords ***
Start key word and maximize
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    Open Browser  ${url}    ${browser}
    Maximize Browser Window
    
Get title and close browser
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    ${title} =  Get Title
    Log To Console    ${title}  
    Close Browser  