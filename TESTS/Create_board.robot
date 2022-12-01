*** Settings ***

Documentation       Create board and check the Value of board
Library             SeleniumLibrary

*** Variables ***    

${url}                http://localhost:3000/
${browser}            chrome



*** Test Cases **
Create board and check the Value of board 

    Open Browser           ${url}        ${browser}
    Maximize Browser Window
    Click Element         id:new-board
    Input Text    class:board_addBoard    ROBOT BOARD 
    Press Keys    class:board_addBoard    ENTER
    Wait Until Element Is Visible         //input[@class="boardDetail_title"]
    ${title}           Get Value          //input[@class="boardDetail_title"]
    Log To Console         ${title}  
    Should Be Equal        ${title}       ${title}        
    Element Should Be Visible             //input[@class="boardDetail_title"]
    
    
    