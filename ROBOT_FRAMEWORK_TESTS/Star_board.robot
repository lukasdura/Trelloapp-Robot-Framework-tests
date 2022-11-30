*** Settings ***

Documentation       Create board and list and check the value of list
Library             SeleniumLibrary

*** Variables ***    

${url}                http://localhost:3000/board/89641985636
${browser}            chrome
${list}               ROBOT LIST 


*** Test Cases ***
Create board and list and check the value of list
    Open Browser        ${url}    ${browser}
    Maximize Browser Window
    
    Wait Until Element Is Visible    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div/h3
    Click Element               //*[@id="trello-app"]/div[5]/div[3]/div[3]/div/h3
    Input Text                  //input[@class="CreateList_input"]   ROBOT LIST
    Press Keys                  //input[@class="CreateList_input"]   ENTER
    ${board_title}         Get Value     //input[@class="boardDetail_title"]
    Log To Console                                 ${board_title} 
    Should Be Equal        ${board_title}          ${board_title} 
    Element Should Be Visible                     //input[@class="boardDetail_title"]
    ${list_title}            Get Value       //input[@class="Input taskTitle"]   
    Should Be Equal    ${list_title}   ${list_title}
    Element Should Be Visible    //input[@class="Input taskTitle"] 
    Drag And Drop    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div[1]/div[3]/div       //div[@data-id="7770690629"]

