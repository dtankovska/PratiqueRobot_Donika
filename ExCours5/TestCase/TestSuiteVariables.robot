*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary

*** Test Cases ***
TC_01_LoginTest
    
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    
    