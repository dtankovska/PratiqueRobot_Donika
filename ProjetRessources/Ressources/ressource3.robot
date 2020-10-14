*** Settings ***
Library    SeleniumLibrary  

*** Variables ***
${browser} =    gc
${url} =    https://opensource-demo.orangehrmlive.com/index.php/auth/login


*** Keywords ***
Open Browser and Maximize   #c'est mon keyword à moi
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${title} =    Get Title
    [Return]    ${title}
    #cette fonction retourne Title
