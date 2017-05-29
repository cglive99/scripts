:: Creates a registry key per user to allow the JDA Space Planning application to use individual user profile settings for the application
:: Created on 4/5/2017 by Chris Griffin
echo off
reg add HKEY_CURRENT_USER\Software\Intactix\pro/space\Paths /f /v Settings /t REG_EXPAND_SZ /d %userprofile%\ProSpace.ini