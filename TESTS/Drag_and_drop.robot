*** Settings ***

Documentation       Create board and list and check the value of list
Library             SeleniumLibrary
Library    String

*** Variables ***    

${url}                http://localhost:3000/
${browser}            chrome
${drag}               DRAGandDROP
${board}              ROBOT BOARD


*** Test Cases ***
Create board and list and check the value of list
    Open Browser        ${url}    ${browser}
    Maximize Browser Window
    Click Element    id:new-board
    Input Text    class:board_addBoard    ${board}
    Press Keys    class:board_addBoard    ENTER 
    
    FOR    ${index}    IN RANGE    2    

    ${list}      Set Variable         ROBOT LIST    ROBOT LIST 2

    
    
    Wait Until Element Is Visible    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div/h3
    Click Element                    //*[@id="trello-app"]/div[5]/div[3]/div[3]/div/h3
    Input Text                       //input[@class="CreateList_input"]   ROBOT LIST
    Press Keys                       //input[@class="CreateList_input"]   ENTER
    END
    Click Element                //h5[@class="List_addTask"]      
    Input Text                  //textarea[@data-id="newTaskTitle"]   ${drag}   
     Press Keys                  //textarea[@data-id="newTaskTitle"]   ENTER
    Drag And Drop                //div[@data-cy="task"]                 //*[@id="trello-app"]/div[5]/div[3]/div[3]/div[2] 

    //*[@id="trello-app"]/div[5]/div[3]/div[2]/div[1]/svg/path//*[@id="trello-app"]/div[5]/div[3]/div[2]/div[1]/svg/path
    
   
    
        
     
    
    
    
      


