*** Settings ***
Library  Selenium2Library

*** Variables ***
${ADD_TO_CART_BTN}          xpath=.//button[@name="Submit"]
${PROCEED_TO_CHECKOUT_BTN}  xpath=.//a[@title="Proceed to checkout"]

*** Keywords ***
Add item to cart
    [Documentation]  Adicionando o item ao carrinho.
    Click Button   ${ADD_TO_CART_BTN}
    Sleep  1s
    Wait Until Element Is Visible  ${PROCEED_TO_CHECKOUT_BTN}
    Click Element  ${PROCEED_TO_CHECKOUT_BTN}