*** Settings ***

Documentation       Create board and list and check the value of list
Library             SeleniumLibrary

*** Variables ***    

${url}                http://localhost:3000/
${browser}            chrome
${list}               ROBOT LIST 
${board}              ROBOT BOARD   


*** Test Cases ***
Create board and list and check the value of list
    Open Browser        ${url}    ${browser}     
    Maximize Browser Window   
    Click Element                      id:new-board
    Input Text                         class:board_addBoard    ${board} 
    Press Keys                         class:board_addBoard    ENTER
    Wait Until Element Is Visible      //*[@id="trello-app"]/div[5]/div[3]/div[3]/div/h3
    Click Element                      //*[@id="trello-app"]/div[5]/div[3]/div[3]/div/h3
    Input Text                         //input[@class="CreateList_input"]   ${list}
    Press Keys                         //input[@class="CreateList_input"]   ENTER
    ${board_title}     Get Value      //input[@class="boardDetail_title"]
    Should Be Equal    ${board_title}  ${board_title} 
    Element Should Be Visible          //input[@class="boardDetail_title"]
    ${list_title}      Get Value       //input[@class="Input taskTitle"]   
    Should Be Equal    ${list_title}   ${list_title}
    Element Should Be Visible          //input[@class="Input taskTitle"]  
    Log To Console                     ${board_title} 
    Log To Console                     ${list_title}
    Click Element                      //*[@id="trello-app"]/div[5]/div[3]/div[3]/div[1]/div[1]
    Click Element    /html/body/div[1]/div[5]/div[3]/div[3]/div[1]/div[1]/div/span[1]

   