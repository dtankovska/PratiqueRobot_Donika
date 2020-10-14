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
    ${location} =  Get Location
    #On cherche l'url de la page et on la stocke dans une variable
    Log To Console    ${location}   
    #On cherche le code source de la page
    ${source} =  Get Source 
    Log To Console    ${source}  
    # Pour chercher des attributs et afficher la valeur sur la console
    #On a localisé l'élément Username et après on est allé cherché un de ses attributs - type dans notre cas.
    ${type} =  Get Element Attribute    id=username    type
    Log To Console    ${type}    
      