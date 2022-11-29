*** Settings ***

Documentation       Create list and chek the value
Library             SeleniumLibrary

*** Variables ***    

${url}                http://localhost:3000/board/6576784041
${browser}            chrome



*** Test Cases ***
Create board and list and check the value of list
    Open Browser         ${url}    ${browser}
    Maximize Browser Window
    Click Element        //h3[@class="CreateList_title"]
    Input Text           //input[@class="CreateList_input"]   ROBOT LIST
    Press Keys           //input[@class="CreateList_input"]   ENTER
    
    