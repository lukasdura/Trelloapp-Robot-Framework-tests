*** Settings ***

Documentation        only training
Library              SeleniumLibrary
Library    String

*** Variables ***

${url}             http://localhost:3000/
${browser}         chrome
${board_title}     newboard 
${list_title}      newlist
${task_title}      newtask      
*** Test Cases ***
training

    Open Browser        ${url}    ${browser}

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
    ${number_of_clicks}        Set Variable    10

    
    FOR    ${index}    IN RANGE    ${number_of_clicks}
    Click Element             //*[@id="trello-app"]/div[5]/div[3]/div[3]/div[1]/h5  
    Input Text    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div[1]/textarea    ${task_title}
    Click Element    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div[1]/div[4]/button
        
    END
    
    

   


    




