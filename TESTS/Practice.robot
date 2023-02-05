*** Settings ***

Documentation        Playground ( add coockies + creating board, list, tasks, select task as done, check if user is loged in .... )
Library              SeleniumLibrary
Library    String
Library    OperatingSystem

*** Variables ***

${url}             http://localhost:3000/
${browser}         chrome
${board_title}     newboard 
${list_title}      newlist
${task_title}      newtask      
*** Test Cases ***
training

    Open Browser        ${url}    ${browser}
    Add Cookie    trello_token    eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Imx1a2FzQGx1a2FzLnNrIiwiaWF0IjoxNjc1NTk5MzMzLCJleHAiOjE2NzU2MDI5MzMsInN1YiI6IjIifQ.2_0KJ19mq3cr6J6aKfvaY3Cr0bN7nq1nwgDZP1HPlcE

    Maximize Browser Window    
    Click Element      //*[@id="new-board"]
    Input Text         //*[@id="new-board"]/input    ${board_title}
    Double Click Element    //*[@id="new-board"]/div/button
    Click Element     //*[@id="trello-app"]/div[5]/div[3]/div[2]/input
    ${board_title}       Get Value    //*[@id="trello-app"]/div[5]/div[3]/div[2]/input    
    Should Be Equal    ${board_title}    ${board_title}
    Location Should Contain    http://localhost:3000/board/
    ${create_list}          Get Location
    Go To    ${create_list}
    Click Element    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div
    Input Text    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div/input    ${list_title}
    Click Element    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div/div/button
     ${list_title}   Get Value    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div[1]/input
    Should Be Equal     ${list_title}        ${list_title}
    ${list_url}          Get Location 
    Location Should Be    ${list_url} 
    ${number_of_clicks}        Set Variable    3

    
    FOR    ${index}    IN RANGE    ${number_of_clicks}
    Click Element             //*[@id="trello-app"]/div[5]/div[3]/div[3]/div[1]/h5  
    Input Text    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div[1]/textarea    ${task_title}
    Click Element    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div[1]/div[4]/button
    Capture Page Screenshot
        
    END
     Click Button    //input[@data-cy="task-done"]
     Checkbox Should Be Selected    //input[@data-cy="task-done"] 
     Checkbox Should Not Be Selected   //*[@id="trello-app"]/div[5]/div[3]/div[3]/div[1]/div[3]/div[2]/div/input
     Checkbox Should Not Be Selected    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div[1]/div[3]/div[3]/div/input

     Element Should Contain      //div[@id="loginMessage"]    User is logged in

     Close All Browsers

    
       
 

    
    

   


    




