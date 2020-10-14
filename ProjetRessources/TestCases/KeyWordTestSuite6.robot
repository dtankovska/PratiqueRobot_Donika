*** Settings ***
Library    SeleniumLibrary    
Resource    ../Ressources/ressource4.robot


Test Setup   Start key word and maximize
Test Teardown    Get title and close browser   


*** Test Cases ***
CT_001
    Input Text    id=txtUsername    Admin    
    Input Password    id=txtPassword    admin123 
    Click Button    id=btnLogin       
    


CT_002
    Input Text    id=txtUsername    Admin    
    Input Password    id=txtPassword    admin123 
    Click Button    id=btnLogin    
    Sleep    3s    
    Page Should Contain    Dashboard   