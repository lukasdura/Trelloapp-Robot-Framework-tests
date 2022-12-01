*** Settings ***

Documentation       Delete board and check if its deleted
Library             SeleniumLibrary

*** Variables ***    

${url}                http://localhost:3000/
${browser}            chrome
${board}              ROBOT BOARD   
        


*** Test Cases **
Delete board and check if its deleted

    Open Browser                ${url}            ${browser}
    Maximize Browser Window
    Click Element                         id:new-board
    Input Text                            class:board_addBoard       ${board}
    Press Keys                            class:board_addBoard    ENTER
    Wait Until Element Is Visible         //*[@id="trello-app"]/div[5]/div[3]/div[2]/div[1]
    Click Element                         //*[@id="trello-app"]/div[5]/div[3]/div[2]/div[1]
    Wait Until Element Is Visible         //span[contains(.,"Delete board")]
    Click Element                         //span[contains(.,"Delete board")]    
   

    

    