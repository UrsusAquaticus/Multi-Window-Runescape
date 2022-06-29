@echo off

:AMOUNT_SETUP
SET /P input="Amount of clients: "
SET /A amount="%input%"*1
IF %amount% GTR 0 GOTO RUN
GOTO INVALID_AMOUNT
 
:INVALID_AMOUNT
ECHO Invalid input
GOTO AMOUNT_SETUP
 
 
:RUN
FOR /L %%i IN (1, 1, %amount%) do (
	START jagex-jav://oldschool1.runescape.com/jav_config.ws
)