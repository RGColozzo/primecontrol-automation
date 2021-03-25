*** Settings ***
Library  Selenium2Library

Resource  ../common.robot

*** Variables ***
${HOME_LOGO}  xpath=.//div[@id="header_logo"]
${ITEM}       xpath=.//img[@title="Blouse"]

*** Keywords ***
Navigate to the home page
    [Documentation]  Navegar até a página inicial do site.
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible  ${HOME_LOGO}

Navigate to the item page
    [Documentation]  Navegar até a página do item que vamos comprar.
    Click Element  ${ITEM}