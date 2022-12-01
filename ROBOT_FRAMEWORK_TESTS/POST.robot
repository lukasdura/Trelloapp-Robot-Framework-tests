*** Settings ***
Documentation         POST   
Library               RequestsLibrary



*** Variables ***

${url}                    http://localhost:3000/              




*** Test Cases ***

Create board
 [Tags]    put
    ${resp}=    PUT    ${url}/api/boards    string
    Status Should Be    OK    ${resp}
    Should Be Equal As Strings    ${resp.json()}[data]    string
