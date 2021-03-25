*** Settings ***
Library  Selenium2Library

Resource  ./item_page.robot

*** Variables ***
${CHECK_CART_PRODUCT}  xpath=.//span[text()="1 Product"]
${EMAIL_FIELD}         xpath=.//input[@id="email"]
${PASSWD_FIELD}        xpath=.//input[@id="passwd"]
${CHECK_ADDRESS}       xpath=.//li[text()="Los Angeles, California 90009"]
${SERVICE_TERMS_BTN}   xpath=.//input[@type="checkbox"]
${STEP1_BTN}           xpath=.//a[@href="http://automationpractice.com/index.php?controller=order&step=1"]     
${STEP3_BTN}           xpath=.//button[@name="processAddress"]
${STEP4_BTN}           xpath=.//button[@name="processCarrier"]
${PAYMENT_METHOD}      xpath=.//a[@title="Pay by check."]
${CONFIRM_ORDER_BTN}   xpath=.//button[@type="submit"]

*** Keywords ***
Validate product step
    [Documentation]  Realizando a validação de que o carrinho contém o produto selecionado.
    Element Should be Visible    ${CHECK_CART_PRODUCT}
    Page Should Contain Element  ${CHECK_CART_PRODUCT}
    Click Element  ${STEP1_BTN}

Validate sign in step
    [Documentation]  Realizar login para continuar a compra.
    [Arguments]  ${EMAIL}  ${PASSWD}
    Input Text      ${EMAIL_FIELD}   ${EMAIL}
    Input Password  ${PASSWD_FIELD}  ${PASSWD}
    Press Keys  none  RETURN

Validate address step
    [Documentation]  Realizando validação do endereço.
    Element Should be Visible    ${CHECK_ADDRESS}
    Page Should Contain Element  ${CHECK_ADDRESS}
    Click Button  ${STEP3_BTN}

Validate shipping step
    [Documentation]  Realizando validação da etapa de entrega do produto.
    Click Button  ${SERVICE_TERMS_BTN}
    Click Button  ${STEP4_BTN}

Select payment method
    [Documentation]  Selecionando o método de pagamento.
    Click Element  ${PAYMENT_METHOD}
    Click Button   ${CONFIRM_ORDER_BTN}