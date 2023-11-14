*** Settings ***

Resource        ../Functions/Functions.robot
Variables       ../Resources/Webelement.py
Variables       ../Resources/Text.py
Variables       ../Resources/Staging.py
# Variables       ../Resources/Production.py
# Variables       ../Resources/Demo.py
# Variables       ../Resources/DevServer.py
Resource        Pages.robot
Library         SeleniumLibrary                implicit_wait=2s
# Library         ExtendedSelenium2Library
Library         DateTime    
Library         Dialogs    
Library         String    
Library         BuiltIn
Library         Collections

*** Keywords ***

ChaseCRUD
    Scroll Element Into View                        //h5[contains(.,"Elements")]
    Execute Javascript                              window.scrollTo(0,300)
    Wait Until Element Is Visible                   //h5[contains(.,"Elements")]
    Click Element                                   //h5[contains(.,"Elements")]
    Scroll Element Into View                        //li[@id="item-3"][contains(.,"Web Tables")]
    Execute Javascript                              window.scrollTo(0,500)
    Wait Until Element Is Visible                   //li[@id="item-3"][contains(.,"Web Tables")]
    Click Element                                   //li[@id="item-3"][contains(.,"Web Tables")] 
    Wait Until Element Is Visible                   //button[@id="addNewRecordButton"]
    Click Element                                   //button[@id="addNewRecordButton"]
    Wait Until Element Is Visible                   //input[@id="firstName"]
    Input Text                                      //input[@id="firstName"]        Robot 
    Wait Until Element Is Visible                   //input[@id="lastName"]
    Input Text                                      //input[@id="lastName"]         Framework 
    Wait Until Element Is Visible                   //input[@id="userEmail"]                                       
    Input Text                                      //input[@id="userEmail"]        robot@framework.com           
    Wait Until Element Is Visible                   //input[@id="age"]
    Input Text                                      //input[@id="age"]              7                                 
    Wait Until Element Is Visible                   //input[@id="salary"]
    Input Text                                      //input[@id="salary"]           7
    Wait Until Element Is Visible                   //input[@id="department"]
    Input Text                                      //input[@id="department"]        SQA 
    Wait Until Element Is Visible                   //button[@id="submit"]
    Click Element                                   //button[@id="submit"]
    Wait Until Element Is Visible                   //div[@class="rt-tr -even"][contains(.,"Robot")][contains(.,"Framework")][contains(.,"7")][contains(.,"robot@framework.com")][contains(.,"7")][contains(.,"SQA")]                   timeout=10s
    Scroll Element Into View                        //div[@class="rt-tr -even"][contains(.,"Robot")][contains(.,"Framework")]//span[@id="edit-record-4"]
    Execute Javascript                              window.scrollTo(0,300)
    Wait Until Element Is Visible                   //div[@class="rt-tr -even"][contains(.,"Robot")][contains(.,"Framework")]//span[@id="edit-record-4"]
    Click Element                                   //div[@class="rt-tr -even"][contains(.,"Robot")][contains(.,"Framework")]//span[@id="edit-record-4"]
    Wait Until Element Is Visible                   //input[@id="firstName"]
    Press Keys                                      //input[@id="firstName"]        CTRL+A+DELETE
    Sleep               1s
    Input Text                                      //input[@id="firstName"]        Robot edit 
    Wait Until Element Is Visible                   //input[@id="lastName"]
    Press Keys                                      //input[@id="lastName"]         CTRL+A+DELETE
    Sleep               1s
    Input Text                                      //input[@id="lastName"]         Framework edit
    Wait Until Element Is Visible                   //input[@id="userEmail"]   
    Press Keys                                      //input[@id="userEmail"]        CTRL+A+DELETE
    Sleep               1s                                    
    Input Text                                      //input[@id="userEmail"]        robotedit@framework.com           
    Wait Until Element Is Visible                   //input[@id="age"]
    Press Keys                                      //input[@id="age"]              CTRL+A+DELETE
    Sleep               1s
    Input Text                                      //input[@id="age"]              8                                 
    Wait Until Element Is Visible                   //input[@id="salary"]
    Press Keys                                      //input[@id="salary"]           CTRL+A+DELETE
    Sleep               1s
    Input Text                                      //input[@id="salary"]           8
    Wait Until Element Is Visible                   //input[@id="department"]
    Press Keys                                      //input[@id="department"]        CTRL+A+DELETE
    Sleep               1s
    Input Text                                      //input[@id="department"]        SoftwareQA 
    Wait Until Element Is Visible                   //button[@id="submit"]
    Click Element                                   //button[@id="submit"]
    Wait Until Element Is Visible                   //div[@class="rt-tr -even"][contains(.,"Robot edit")][contains(.,"Framework edit")][contains(.,"8")][contains(.,"robotedit@framework.com")][contains(.,"8")][contains(.,"SoftwareQA")]                   timeout=10s
    Scroll Element Into View                        //div[@class="rt-tr -even"][contains(.,"Robot edit")][contains(.,"Framework edit")]//span[@id="delete-record-4"]
    Execute Javascript                              window.scrollTo(0,300)
    Wait Until Element Is Visible                   //div[@class="rt-tr -even"][contains(.,"Robot edit")][contains(.,"Framework edit")]//span[@id="delete-record-4"]
    Click Element                                   //div[@class="rt-tr -even"][contains(.,"Robot edit")][contains(.,"Framework edit")]//span[@id="delete-record-4"]
    Sleep              1s





ChaseProgressBar      
    Scroll Element Into View                        //h5[contains(.,"Widgets")]
    Execute Javascript                              window.scrollTo(0,300)
    Wait Until Element Is Visible                   //h5[contains(.,"Widgets")]
    Click Element                                   //h5[contains(.,"Widgets")]
    Scroll Element Into View                        //li[@id="item-4"][contains(.,"Progress Bar")]
    Execute Javascript                              window.scrollTo(0,500)
    Wait Until Element Is Visible                   //li[@id="item-4"][contains(.,"Progress Bar")]
    Click Element                                   //li[@id="item-4"][contains(.,"Progress Bar")] 
   
    Wait Until Element Is Visible                   //button[@id="startStopButton"]
    Click Element                                   //button[@id="startStopButton"]  

     FOR    ${index}    IN RANGE    1000
    ${Next} =           Run Keyword and Return Status      Wait Until Element Is Visible                 //div[@id="progressBar"]//div[@style="width: 100%;"]
    Run Keyword If      ${Next}            log             Already 
    Run Keyword If      ${Next} == False                   Wait Until Element Is Visible       //button[@id="startStopButton"]
    Run Keyword If      ${Next} == False                   Click Element                       //button[@id="startStopButton"]
    
    Exit For Loop If    ${Next}    # Menghentikan loop jika elemen ditemukan
    Sleep    1s 
    END


