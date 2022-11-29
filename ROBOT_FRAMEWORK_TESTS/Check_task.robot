*** Settings ***

Documentation       Select checkbox as done and check if it is checked 
Library             SeleniumLibrary

*** Variables ***    

${url}                http://localhost:3000/
${browser}            chrome



*** Test Cases ***
Select checkbox as done and check if it is checked 
    Open Browser        ${url}            ${browser}
    Maximize Browser Window
    Click Element                  id:new-board
    Input Text                     class:board_addBoard    ROBOT BOARD 
    Press Keys                     class:board_addBoard    ENTER
    Click Element                  //h3[@class="CreateList_title"]
    Input Text                     //input[@class="CreateList_input"]   ROBOT LIST
    Press Keys                     //input[@class="CreateList_input"]   ENTER
    Click Element                  //h5[@class="List_addTask"]
    Input Text                     //textarea[@data-id="newTaskTitle"]   ROBOT TASK
    Press Keys                     //textarea[@data-id="newTaskTitle"]   ENTER
    Select Checkbox                //input[@data-cy="task-done"] 
    Page Should Contain Checkbox   //input[@class="checkmark"] 
    Checkbox Should Be Selected    //input[@data-cy="task-done"]
   
