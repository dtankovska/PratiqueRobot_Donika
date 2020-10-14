*** Settings ***
Library    SeleniumLibrary  

*** Variables ***
${browser} =    gc
${url} =    https://opensource-demo.orangehrmlive.com/index.php/auth/login


*** Keywords ***
Open Browser and Maximize   #c'est mon keyword à moi. Ce keyword NE prends PAS des arguments !!!
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
