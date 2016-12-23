@echo off
Setlocal enabledelayedexpansion

Set "Pattern=89G95G"
Set "Replace=169G175G"

For /R /D %%# in (*.*) Do (
    Set "File=%%~nx#"
    Ren "%%#" "!File:%Pattern%=%Replace%!"
)
pause ...