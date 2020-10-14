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
    Select From List By Index    id=drop1    0    #selection l'élément 3 de la liste
    Sleep    3s  
    ${value} =  Get Selected List Value    id=drop1    #on a demandé de ramener la valeur qui est affichée à ce moment.
    # On la stocke dans une variable et l'affiche à la console
     Log To Console    ${value}  
     # Là on va chercher le Label (la valeur qui s'affiche à l'intérieur de la liste) et l'afficher à la console
     ${label} =  Get Selected List Label    id=drop1    
     Log To Console    ${label} 
     # On va chercher tous les items qui sont dans le dropdown et les afficher à la console
     ${allLabels} =  Get List Items    id=drop1   
     Log To Console    ${allLabels}     
        
       