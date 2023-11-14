*** Settings ***

Resource        ../Functions/Functions.robot
Variables       ../Resources/Staging.py
# Variables       ../Resources/Production.py
# Variables       ../Resources/Demo.py
# Variables       ../Resources/DevServer.py
Resource        Subpages.robot
Library         SeleniumLibrary                 implicit_wait=2
Library         DateTime    
Library         Dialogs    
Library         String    
Library         Collections    
   

*** Keywords ***

TestCRUD
    OpenWebBrowser 
    ChaseCRUD

TestCheckProgressBar 
    OpenWebBrowser 
    ChaseProgressBar


