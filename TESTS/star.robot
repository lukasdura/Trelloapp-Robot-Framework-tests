*** Settings ***

Documentation       Create board and list and check the value of list
Library             SeleniumLibrary

*** Variables ***    

${url}                http://localhost:3000/
${browser}            chrome
${list}               ROBOT LIST 


*** Test Cases ***
Create board and list and check the value of list
    Open Browser        ${url}    ${browser}     
    Maximize Browser Window   
    Click Element    xpath=/html/body/div[1]/div[5]/div[3]/div[2]/div[4]/h1






