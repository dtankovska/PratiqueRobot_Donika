*** Settings ***
Library    SeleniumLibrary 
Library    OperatingSystem       


*** Variables ***
${url} =  https://login.salesforce.com/?locale=ca
${browser} =  gc

*** Test Cases ***
TC_001
    #Ouvrir le browser
    #Maximiser la page
    #Obtenir le titre de la page et l'afficher à la console
    #Chercher l'attribut value du boutton Login et l'afficher à la console
    #Chercher le text du lien Use et l'afficher à la console
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    
    Open Browser   ${url}    ${browser}  #Ouvrir le browser
    Maximize Browser Window  #Maximiser la page
    ${title} =  Get Title  #On stocke le titre dans une variable. Après on obtient le titre de la page et l'afficher à la console
    Log To Console    ${title}   
    ${value} =  Get Value    id=Login  #Chercher l'attribut value du boutton Login et l'afficher à la console
    Log To Console    ${value}    
    ${text} =  Get Text    id=mydomainLink  #Chercher le text du lien Use et l'afficher à la console
    Log To Console    ${text}    
    
         