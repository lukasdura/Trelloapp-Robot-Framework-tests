*** Settings ***

Documentation       Create board and list and task adn check the value of task
Library             SeleniumLibrary

*** Variables ***    

${url}                http://localhost:3000/
${browser}            chrome



*** Test Cases ***
Create board and list and task adn check the value of task
    Open Browser        ${url}            ${browser}
    Maximize Browser Window
    Click Element               id:new-board
    Input Text                  class:board_addBoard    ROBOT BOARD 
    Press Keys                  class:board_addBoard    ENTER
    