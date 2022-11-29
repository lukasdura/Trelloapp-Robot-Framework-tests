*** Settings ***
Documentation            API testing        

Library                  RequestsLibrary


*** Variables ***

${URL}            http://localhost:3000/


*** Test Cases ***
GET REQUEST ALL POST            

    ${response}    GET    ${URL}/api/lists       
    Log To Console    ID:${response}     Title:${response}

   

    