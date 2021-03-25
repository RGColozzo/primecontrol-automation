*** Settings ***
Library  Selenium2Library

Resource  ../resources/common.robot
Resource  ../resources/pageobject/cart_page.robot
Resource  ../resources/pageobject/home_page.robot
Resource  ../resources/pageobject/item_page.robot

Test Teardown  Close navigation

*** Test Cases ***
Buy a product
    Given that I access the shopping site
    When I add a product to my cart
    Then I must log in to complete the purchase  ${EMAIL}  ${PASSWD}

*** Keywords ***
Given that I access the shopping site
    [Documentation]  Navegamos até a página inicial do site.
    Navigate to the home page

When I add a product to my cart
    [Documentation]  Selecionamos um item e adicionamos ele ao carrinho.
    Navigate to the item page
    Add item to cart

Then I must log in to complete the purchase
    [Documentation]  Validamos se o produto foi para o carrinho.
    ...              Realizamos login.
    ...              Validamos o endereço de entrega.
    ...              Aceitamos os termos de entrega.
    ...              Selecionamos o método de pagamento e finalizamos a compra.
    [Arguments]  ${EMAIL}  ${PASSWD}
    Validate product step
    Validate sign in step  ${EMAIL}  ${PASSWD}
    Validate address step
    Validate shipping step
    Select payment method