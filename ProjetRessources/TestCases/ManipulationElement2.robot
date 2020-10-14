*** Settings ***
Library    SeleniumLibrary  
Library    OperatingSystem      


*** Variables ***
${browser}=  gc
${url}=   http://omayo.blogspot.com/


#select from dropdown by index(we can select only one item from dropdown)

 

*** Test Cases ***
TC_001
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Speed    1s
    #Les diff façon de séléctionner un élément dans un dropdown.
    #Dans un dropdown on ne peut séléctionner plus d'un élément
    Select From List By Index    id=drop1    1   
    Select From List By Value    id=drop1    jkl
    Select From List By Label    id=drop1     doc 4            
    Close Browser   
    
TC_002
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Speed    1s  
    #Pour séléctionner plusieurs éléments dans la même liste
    Select From List By Label    id=multiselect1     Volvo
    Select From List By Label    id=multiselect1     Audi   
    Select From List By Label    id=multiselect1     Swift               
    Close Browser 