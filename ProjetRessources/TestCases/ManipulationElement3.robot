*** Settings ***
Library    SeleniumLibrary 
Library    OperatingSystem       


*** Variables ***
${url} =  http://omayo.blogspot.com/
${browser} =  gc

*** Test Cases ***
TC_001
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    1s
    # Pour selectionner un bouton radio
    Select Radio Button    gender    male
    #Pour selectionner un checkbox
    Select Checkbox    id=checkbox2
    #Pour déselectionner un checkbox
    #Unselect Checkbox   id=checkbox1 
    Click Element    id=checkbox1
    Click Link    id=link1        