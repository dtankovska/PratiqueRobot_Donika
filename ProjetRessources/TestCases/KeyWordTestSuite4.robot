*** Settings ***
Library    SeleniumLibrary    
Resource    ../Ressources/ressource4.robot
Library    OperatingSystem    


*** Test Cases ***
CT_001
    [Setup]    Start key word and maximize
    [Teardown]    Get title and close browser
    Input Text    id=txtUsername    Admin    
    Input Password    id=txtPassword    admin123 
    Click Button    id=btnLogin       
    


CT_002
    [Setup]    Start key word and maximize
    [Teardown]    Get title and close browser
    Input Text    id=txtUsername    Admin    
    Input Password    id=txtPassword    admin123 
    Click Button    id=btnLogin    
    Sleep    3s    
    Page Should Contain    Dashboard    
    #On a créé deux tests et pour ch tests on a créé un Setup et un Teardown