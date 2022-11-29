*** Settings ***

Documentation       Sipn up to app 
Library             SeleniumLibrary

*** Variables ***    

${url}                http://localhost:3000/
${browser}            chrome
${email}              lukas2@lukas.sk    
${password}           lukas   


*** Test Cases ***
Sipn up to app 
    Open Browser        ${url}            ${browser}
    Maximize Browser Window
    Click Element    //div[@class="Nav_user Nav_button"]
    Click Element    //a 
       
    Input Text          id:signupEmail       ${email}
    Input Password      id:signupPassword    ${password}
    Press Keys          id:signupPassword    ENTER  
    


