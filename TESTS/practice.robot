*** Settings ***

Documentation        only training
Library              SeleniumLibrary

*** Variables ***

${url}             http://localhost:3000/
${browser}         chrome
${board_title}     newboard 
${list_title}      newlist

*** Test Cases ***
blbbla

    Open Browser        ${url}    ${browser}

    Maximize Browser Window    
    Click Element    //*[@id="new-board"]
    Input Text    //*[@id="new-board"]/input    ${board_title}
    Double Click Element    //*[@id="new-board"]/div/button
    Click Element    //*[@id="trello-app"]/div[5]/div[3]/div[2]/input
    ${board_title}       Get Value    //*[@id="trello-app"]/div[5]/div[3]/div[2]/input    
    Should Be Equal    ${board_title}    ${board_title}
   Go To    ${create_list}
    Location Should Contain    http://localhost:3000/board/
    
    Click Element    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div
    Input Text    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div/input    ${list_title}
    Click Element    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div/div/button





