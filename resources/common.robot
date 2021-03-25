*** Settings ***
Library  Selenium2Library

*** Variables ***
${URL}      http://automationpractice.com/index.php
${BROWSER}  Chrome

*** Keywords ***
Close navigation
    Close Browser