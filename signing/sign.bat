PATH=%PATH%;%WSDK81%\bin\x86

rem sign using SHA-1
signtool sign /v /sha1 036bd383857b38a89d5dc5dfe5821cd1b942e38e /ac Thawt_CodeSigning_CA.crt /fd sha1 /t http://timestamp.verisign.com/scripts/timestamp.dll "..\Release\dumpEfiVars.exe" 
rem sign using SHA-256
signtool sign /v /a /n "IDRIX SARL" /i GlobalSign /ac GlobalSign_SHA256_EV_CodeSigning_CA.cer /as /fd sha256 /tr http://timestamp.globalsign.com/?signature=sha2 /td SHA256 "..\Release\dumpEfiVars.exe" 

pause
