#!/bin/sh

EMAIL_OK=rennan.colozzo18@hotmail.com
PASSWD_OK=teste123

EMAIL_NOK=teste@teste.123
PASSWD_NOK=teste

#Execução do cenário OK
robot -d '..\results\' -t 'Buy a product' -v EMAIL:$EMAIL_OK -v PASSWD:$PASSWD_OK '..\tests\buy_product.robot'

#Execução do cenário não OK
robot -d '..\results\' -t 'Buy a product' -v EMAIL:$EMAIL_NOK -v PASSWD:$PASSWD_NOK '..\tests\buy_product.robot'