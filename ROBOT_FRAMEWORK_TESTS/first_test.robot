*** Settings ***

Documentation            my first test
Library                  SeleniumLibrary

*** Variables ***

${URL}            http://localhost:3000
${BROWSER}        Chrome


*** Test Cases ***

Try to open page

    Open Browser            ${URL}        ${BROWSER}