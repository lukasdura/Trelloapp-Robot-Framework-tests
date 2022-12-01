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
    Wait Until Element Is Visible    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div/h3
    Click Element               //*[@id="trello-app"]/div[5]/div[3]/div[3]/div/h3
    Input Text                  //input[@class="CreateList_input"]   ROBOT LIST
    Press Keys                  //input[@class="CreateList_input"]   ENTER
         
    FOR    ${index}     IN RANGE    5   

    ${name}      Set Variable    ['lukas', 'peter']     
    
     Click Element                //h5[@class="List_addTask"]          
     Input Text                  //textarea[@data-id="newTaskTitle"]   ${name}   
     Press Keys                  //textarea[@data-id="newTaskTitle"]   ENTER
        
    END
   
    


    