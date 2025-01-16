@echo off
"%WINDIR%\Setup\Files\VC_redist.x64.exe" /q /norestart
"%WINDIR%\Setup\Files\VC_redist.x86.exe" /q /norestart
"%WINDIR%\Setup\Files\vcredist2008_x64.exe" /q /norestart
"%WINDIR%\Setup\Files\vcredist2008_x86.exe" /q /norestart
"%WINDIR%\Setup\Files\vcredist2010_x64.exe" /q /norestart
"%WINDIR%\Setup\Files\vcredist2010_x86.exe" /q /norestart
"%WINDIR%\Setup\Files\vcredist2012_x64.exe" /q /norestart
"%WINDIR%\Setup\Files\vcredist2012_x86.exe" /q /norestart
"%WINDIR%\Setup\Files\vcredist2013_x64.exe" /q /norestart
"%WINDIR%\Setup\Files\vcredist2013_x86.exe" /q /norestart
powercfg /hibernate off
schtasks /delete /tn "\Microsoft\Windows\InstallService\ScanForUpdates" /f
schtasks /delete /tn "\Microsoft\Windows\InstallService\ScanForUpdatesAsUser" /f
schtasks /delete /tn "\Microsoft\Windows\InstallService\WakeUpAndScanForUpdates" /f
schtasks /delete /tn "\Microsoft\Windows\InstallService\WakeUpAndContinueUpdates" /f
schtasks /delete /tn "\Microsoft\Windows\Location\Notifications" /f
schtasks /delete /tn "\Microsoft\Windows\License Manager\TempSignedLicenseExchange" /f
schtasks /delete /tn "\Microsoft\Windows\InstallService\SmartRetry" /f
rd /q /s "%WINDIR%\Setup\Files"
del /q /f "%0"
