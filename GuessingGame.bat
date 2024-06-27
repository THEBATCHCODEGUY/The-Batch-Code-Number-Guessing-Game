@echo off
title Guessing Game

rem Set the random number for the player to guess
set /a target=%random% %% 100 + 1

echo Welcome to the Guessing Game!
echo.
echo I'm thinking of a number between 1 and 100...
echo.

:guess
set /p guess=Your guess: 

rem Check if the input is a valid number
echo %guess%|findstr /r "^[0-9]*$">nul||(echo Please enter a valid number!&goto guess)

rem Compare the guess with the target number
if %guess% lss %target% (
    echo Too low! Try again.
    goto guess
) else if %guess% gtr %target% (
    echo Too high! Try again.
    goto guess
) else (
    echo Congratulations! You guessed the number %target%.
    echo.
    echo Thanks for playing!
    pause>nul
)

echo By THEBATCHCODEGUY

