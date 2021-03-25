*** Settings ***
Resource  ../resources/steps/steps.robot

*** Test Cases ***
Buy a product
    Given that I access the shopping site
    When I add a product to my cart
    Then I must log in to complete the purchase  ${EMAIL}  ${PASSWD}