*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem        

*** Test Cases ***
TC_01_MultiFenetres
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    
    Open Browser   https://www.google.com/  gc
    Maximize Browser Window
    Sleep    5s    
    Open Browser    http://omayo.blogspot.com/  gc
    Maximize Browser Window
    Sleep    5s 
    Open Browser    https://yahoo.fr/  gc
    Maximize Browser Window
    Sleep    5s    
    Switch Browser    1
    #l'instance switch browser va aller d'une instance à une autre
    Input Text    name=q    qui est la plus jolie   
    ${url} =  Get Location 
    Log To Console    ${url}  
    Sleep    5s    
    Switch Browser    2 
    Sleep    5s 
    Click Element    id=alert1       
    #pour switcher de nouveau au deuxième browser
    ${url} =  Get Location 
    Log To Console    ${url} 
    Switch Browser    3 
    Sleep    5s       
    #pour switcher de nouveau au deuxième browser
    ${url} =  Get Location 
    Log To Console    ${url} 
    
    
TC_02
    
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    
    Open Browser   https://www.google.com/  gc
    Maximize Browser Window
    ${url} =  Get Location 
    Log To Console    ${url}    
    #pour ouvrir une fenêtre en utilisant une variable 
    #qui va contenir l'url et après je l'affiche à la console
    
CT_03
    Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    
    Open Browser    https://robotframework.org/  gc
    Maximize Browser Window
    Click Element    xpath://a[@href="https://robotframework.org/rpa/"] 
    Select Window   url = https://robotframework.org/rpa/  
    ${url} =  Get Location
    Log To Console    ${url}  
    Select Window     url = https://robotframework.org/  
    ${url2} =  Get Location
    Log To Console    ${url2} 
    #si on a deux instance diff, on utilise la première méthode
    #si on veut ouvrir un lien
    #si la page va s'ouvrir sur la même page, pas deproblème
    #mais si je vois qu'il y a un _lienblanc, je dois utiliser la commande SelectWindow
    #je peux identifier la page par le lien ou par le title de la page
    
CT_04
     Log  %{PATH}

    Append To Environment Variable    PATH    /usr/local/bin

    Log  %{PATH}
    
    Open Browser    https://robotframework.org/  gc
    Maximize Browser Window
    Click Element    xpath://a[@href="https://robotframework.org/rpa/"] 
    Select Window    0  
    ${url} =  Get Location
    Log To Console    ${url}  
    Select Window    1 
    ${url2} =  Get Location
    Log To Console    ${url2} 
    

    