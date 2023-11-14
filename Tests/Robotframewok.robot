*** Settings ***
Library         SeleniumLibrary             implicit_wait=2
Library         DateTime    
Library         Dialogs    
Library         String    
Library         Collections     
Resource        ../Functions/Functions.robot
Resource        ../PagesAndSubPages/Pages.robot
Resource        ../PagesAndSubPages/Subpages.robot
Variables       ../Resources/Webelement.py
Variables       ../Resources/Staging.py
# Variables       ../Resources/Production.py
# Variables       ../Resources/DevServer.py
# Variables       ../Resources/Demo.py
# Suite Setup   
# Suite Teardown   
Test Teardown    Close All Browsers

*** Test Cases ***

CRUDform
    TestCRUD

CheckProgressBar
    TestCheckProgressBar 

