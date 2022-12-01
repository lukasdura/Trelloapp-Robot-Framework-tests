*** Settings ***

Documentation       Sipn up to app and check signup
Library             SeleniumLibrary


*** Variables ***    

${url}                http://localhost:3000/
${browser}            chrome
${email}              lukas2@lukas.sk    
${password}           lukas   


*** Test Cases ***
Sipn up to app and check signup
    Open Browser               ${url}            ${browser}
    Maximize Browser Window
    Click Element                     //div[@class="Nav_user Nav_button"]
    Input Text                        //input[@id="loginEmail"]        ${email}
    Input Password                    //input[@id="loginPassword"]     ${password}
    Press Keys                        //input[@id="loginPassword"]     ENTER  
    Wait Until Element Is Visible     //div[@id="loginMessage"]
    Element Should Contain            //div[@id="loginMessage"]        User is logged in


