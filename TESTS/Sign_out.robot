*** Settings ***

Documentation       Sipn up to app and check signup
Library             SeleniumLibrary


*** Variables ***    

${url}                http://localhost:3000/
${browser}            chrome
${email}              lukas@lukas.sk    
${password}           lukas   



*** Test Cases ***
Sign up, check if the user is logged in and Sign out and check if the user is logged out
    Open Browser                      ${url}                           ${browser}
    Maximize Browser Window
    Click Element                     //div[@class="Nav_user Nav_button"]
    Input Text                        //input[@id="loginEmail"]        ${email}
    Input Password                    //input[@id="loginPassword"]     ${password}
    Press Keys                        //input[@id="loginPassword"]     ENTER  
    Wait Until Element Is Visible     //div[@id="loginMessage"]
    Element Should Contain            //div[@id="loginMessage"]        User is logged in
    Page Should Contain               ${email} 
    Wait Until Element Is Visible     xpath=/html/body/div[1]/nav/div[3]       
    Double Click Element              xpath=/html/body/div[1]/nav/div[3]
    Page Should Contain               Log in
   
    



