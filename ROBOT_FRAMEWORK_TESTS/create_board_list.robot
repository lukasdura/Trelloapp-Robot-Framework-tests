*** Settings ***

Documentation       Create board and list and check the value of list
Library             SeleniumLibrary

*** Variables ***    

${url}                http://localhost:3000/
${browser}            chrome



*** Test Cases ***
Create board and list and check the value of list
    Open Browser        ${url}    ${browser}
    Maximize Browser Window
    Click Element    id:new-board
    Input Text    class:board_addBoard    ROBOT BOARD 
    Press Keys    class:board_addBoard    ENTER
    Click Element     //h3[@class="CreateList_title"]
    Input Text      //input[@class="CreateList_input"]   ROBOT LIST
    Press Keys      //input[@class="CreateList_input"]   ENTER
    ${board_title}           Get Value     //input[@class="boardDetail_title"]
    Log To Console    ${board_title} 
    Should Be Equal     ${board_title}         ${board_title} 
    Element Should Be Visible         //input[@class="boardDetail_title"]
    ${list_title}            Get Value       //input[@class="Input taskTitle"]   
    Should Be Equal    ${list_title}   ${list_title}
    Element Should Be Visible    //input[@class="Input taskTitle"]  

    