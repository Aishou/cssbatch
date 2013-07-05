REM Copyright (c) 2008-2013, Aishou <kaito.linux@gmail.com>
REM 
REM This program is free software; you can redistribute it and/or modify
REM it under the terms of the GNU General Public License as published by
REM the Free Software Foundation; either version 2 of the License, or
REM (at your option) any later version.
REM 
REM This program is distributed in the hope that it will be useful,
REM but WITHOUT ANY WARRANTY; without even the implied warranty of
REM MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
REM  GNU General Public License for more details.
REM 
REM You should have received a copy of the GNU General Public License along
REM with this program; if not, write to the Free Software Foundation, Inc.,
REM 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

@echo off


:txr1
title CSS Batch by Aishou
echo ////////////////////////////////
echo //        CSS in Batch        //
echo //          by Aishou         //
echo ////////////////////////////////
goto setnor


:setnor
set /A hp=100
set /A att=100
set /A att2=200
set /A gg1=16000
set /A ggatt1=150
set /A t=0
set /A gtf=100
set tie=Time
Set /A clientid=%random%%1
Set /A radomsrvnum=%random%%1
set radomsrvname=Main%radomsrvnum%
set banid=%username%
set /A sdmg=%random% %%30+15
set /A msim=%random% %%3+1
set internver=0.1.2.0
goto dataordner1





:dataordner1
if exist data goto dataordner2
if NOT exist data md data

:dataordner2

if exist data\maps goto dataordner3
if NOT exist data\maps md data\maps

:dataordner3

if exist data\logs goto dataordner4
if NOT exist data\logs md data\logs

:dataordner4

if exist data\publicsrv goto dmgsets
if NOT exist data\publicsrv md data\publicsrv





:dmgsets
set /A glockdmg=3
set /A uspdmg=16
set /A P228dmg=600
set /A glockdmg=500
set /A desdeagledmg=29
set /A fivesevendmg=750
set /A dualelitedmg=800
set /A mac10dmg=1400
set /A tmpdmg=1250
set /A mp5dmg=1500
set /A umpdmg=1700
set /A p90dmg=2350
set /A m3dmg=1700
set /A xm1014dmg=3000
set /A famasdmg=2250
set /A galildmg=2000
set /A ak47dmg=2500
set /A m4a1dmg=3100
set /A sig552dmg=3500
set /A augdmg=3500
set /A scoutdmg=2750
set /A hksg1dmg=550
set /A awpdmg=4750
set /A hedmg=300




:sets
set /A glock=500
set /A usp=500
set /A P228=600
set /A glock=500
set /A desdeagle=650
set /A fiveseven=750
set /A dualelite=800
set /A mac10=1400
set /A tmp=1250
set /A mp5=1500
set /A ump=1700
set /A p90=2350
set /A m3=1700
set /A xm1014=3000
set /A famas=2250
set /A galil=2000
set /A ak47=2500
set /A m4a1=4750
set /A sig552=3500
set /A aug=3500
set /A scout=2750
set /A hksg1=550
set /A awp=4750
set /A he=300
set /A kevlar=100


:main
rem Mainmenu
echo [1] PLay
echo [2] How to
echo [3] Credits
echo [4] News und Updates
echo [5] Gib dein Feedback ab!
echo [6] Wie ist meine Client ID?
echo [7] Cancel
set /p main=Wähle eine der Optionen aus:
if %main% == 1 goto fragemulti
if %main% == 2 goto howto
if %main% == 3 goto cerdits
if %main% == 4 goto news
if %main% == 5 goto feedbackmenu1
if %main% == 6 goto clientid
if %main% == 7 goto cancel
if %main% == 159 goto shell
if %main% == ini goto ini
if %main% == play goto play
if %main% == matchsim goto matchsimu
if %main% == ver goto internver


:internver
echo.
echo --------------------------------
echo --------------------------------
echo.
echo   Interne Version: %internver%
echo.
echo --------------------------------
echo --------------------------------
echo.

goto main
pause>nul










:matchsimu
echo Das ist der Match Simulator,er simuliert das jetztige Spielprinzip!


if "%msim%"=="1"  
echo.
echo --------------------------------
echo --------------------------------
echo.
echo   Client ID: %clientid%
echo.
echo --------------------------------
echo --------------------------------
echo.
pause>nul






echo Ein Terorrist kommt an.
set /p sim=matchsim#
if /I "%sim%"=="shoot" set /a gtf=gtf-uspdmg
echo %handweapon%
if /I "%sim%"=="switsch" set /p %handweapon% 
echo %handweapon%
echo %gtf%
goto matchsimu















:clientid
echo.
echo --------------------------------
echo --------------------------------
echo.
echo   Client ID: %clientid%
echo.
echo --------------------------------
echo --------------------------------
echo.
pause>nul
goto main


:ver
echo Uberprüfe Windows Version.

for /F "tokens=3" %%a in ('ver') do set bs=%%a

if "%bs%"=="XP" set winok=ok..
echo %winok%
cls
if "%bs%"=="XP" goto txr1
if not "%bs%=="XP" goto oldwin


:oldwin
title Du benutst eine Windows Version die älter ist als Windows XP
echo Du benutst eine Windows Version die älter ist als Windows XP,
echo CSS Batch barucht mindestens Windows XP
echo CSS Batch wird jetzt geschlossen.
pause
exit



:feedbackmenu1
echo Gib dein Feedback ab!
echo.
echo Hier kannst du einfach dein Feedback zu CSS Batch abgeben,
echo und das von anderen lesen.
echo Lade Feedbacks...

echo @echo off > data\fp3.bat
echo ftp -s:feedback2.ftp >> data\fp3.bat

echo set shell = CreateObject("Wscript.Shell") > data\hide3.vbs
echo shell.run "fp3.bat", 0 >> data\hide3.vbs

echo OPEN ftp.<ftp host> > data\feedback2.ftp
echo cssbatch >> data\feedback2.ftp
echo 123456789 >> data\feedback2.ftp
echo cd feedback >> data\feedback2.ftp
echo get feedback.txt >> data\feedback2.ftp
echo bye >> data\feedback2.ftp
Start /D data data\hide3.vbs
ping -n 4 localhost > NUL
goto feedbackvi



:feedbackmenu
echo Gib dein Feedback ab!
echo.
echo Hier kannst du einfach dein Feedback zu CSS Batch abgeben,
echo und das von anderen lesen.
echo.
echo [1] Feedback abgeben!!
echo [2] Feedbacks anzeigen
echo [3] Zurück zum Main Menu
set /p feedback=Wähle eine der Optionen aus:
if %feedback% == 1 goto feedbackgeben
if %feedback% == 2 goto feedbackvi2
if %feedback% == 3 goto main



:feedbackvi2
echo.
echo --------------------------------
echo --------------------------------
echo.
type data\feedback.txt|more
echo.
echo --------------------------------
echo --------------------------------
echo.
pause>nul
goto feedbackmenu



:feedbackvi
echo Feedbacks Geladen.
echo.
echo --------------------------------
echo --------------------------------
echo.
type data\feedback.txt|more
echo.
echo --------------------------------
echo --------------------------------
echo.
pause>nul
del data\fp3.bat
del data\hide3.vbs
goto feedbackmenu


:feedbackgeben
echo Gib bitte hier den Betreff an:
echo.
REM // Eingabe Funktion
set /p nick=Nick:
set /p betf=Betreff:
set /p nachricht=Nachricht:
echo. >> data\feedback.txt
echo. >> data\feedback.txt
echo  Nickname: %nick% >> data\feedback.txt
echo  Betreff: %betf% >> data\feedback.txt
echo  Feedback: %nachricht% >> data\feedback.txt
echo Dein Feedback wird gesendet....

echo @echo off > data\fp2.bat
echo ftp -s:feedback.ftp >> data\fp2.bat

echo set shell = CreateObject("Wscript.Shell") > data\hide2.vbs
echo shell.run "fp2.bat", 0 >> data\hide2.vbs



echo OPEN ftp.<ftp host> > data\feedback.ftp
echo cssbatch >> data\feedback.ftp
echo 123456789 >> data\feedback.ftp
echo cd feedback >> data\feedback.ftp
echo send feedback.txt >> data\feedback.ftp
echo bye >> data\feedback.ftp
Start /D data data\hide2.vbs
ping -n 3 localhost > NUL
echo Feedback Gesendet.

del data\hide2.vbs
del data\feedback.txt
del data\fp2.bat
goto feedbackmenu




:news
echo @echo off > data\fp.bat
echo if exist news.txt del news.txt >> data\fp.bat
echo ftp -s:news.ftp >> data\fp.bat

echo set shell = CreateObject("Wscript.Shell") > data\hide.vbs
echo shell.run "fp.bat", 0 >> data\hide.vbs



echo OPEN ftp.<ftp host> > data\news.ftp
echo cssbatch >> data\news.ftp
echo 123456789 >> data\news.ftp
echo cd news >> data\news.ftp
echo get news.txt >> data\news.ftp
echo bye >> data\news.ftp
Start /D data data\hide.vbs
ping -n 4 localhost > NUL
Start /D data data\hide.vbs
echo Lade News...

echo Fertig
goto seenews

:seenews
echo.
echo --------------------------------
echo --------------------------------
echo.
type data\news.txt|more
echo --------------------------------
echo --------------------------------
echo.
pause>nul
del data\news.ftp
del data\fp.bat
del data\hide.vbs
goto main





:cerdits
echo Unser Developer Team
echo    Head Developer
echo.
echo        Aishou
echo.
echo    2 ter Developer
echo.
echo   Disturbed (Philip)
echo.
echo.
echo Ich Aishou leite das Project "CSS Batch"
echo eine CSS Version in Shell
echo Ihr dürft es Frei verwenden und verändern,
echo nur ich bitte um Credits
echo --------------------------------
echo --------------------------------
echo.
goto main

:howto
echo Noch nich vorhanden^^
goto main
echo.
:cancel
echo --------------------------------
echo Vielen dank das Du CSS Batch ausprobiert hast
echo Besucht doch mal NONE.
pause
exit


:ini
REM // überbleibsel aus alter version wird (noch) nicht verwendet
echo  16000 > cssbatch.ini
echo INI Erstellt!!!
echo --------------------------------
echo --------------------------------
echo.
goto main
















:fragemulti
echo WICHTIG!!!!! Das Mehr Server Prinzip ist noch in der BETA
echo [1] Erstellen
echo [2] Beitreten
set /p fargemulti=Möchtest du einem Spiel Joinen oder eins erstellen?:
if /I "%fargemulti%"=="1" goto serverstellen & set srvnamecheckk=15
if /I "%fargemulti%"=="2" goto serversuchen




:serverstellen
echo Wenn du keine Admins einrichtest wirst nur du Automatisch Admin!
echo [1] Servername
echo [2] Startgeld
echo [3] Admins
echo [4] Server Fertig zum Starten
echo [5] Random Einstellungen und Spiel Starten
set /p srverst=Wähle eine der Optionen aus:
if /I "%srverst%"=="1" goto srvname
if /I "%srverst%"=="2" goto srvstartgeld
if /I "%srverst%"=="3" goto srvadmins
if /I "%srverst%"=="4" goto srvnamecheck
if /I "%srverst%"=="5" goto srvdefault


:srvdefault
set srvname=%radomsrvname%
md data\srv%radomsrvname%
echo %srvname% > data\srv%radomsrvname%\srvname.ini
set srvdone=<data\srv%srvname%\serverdone.ini
echo %clientid% >> data\srv%srvname%\adminlist.bat
set srvnamecheckk=16
goto play



:srvname
echo Bitte nur ein Wort!!!!
set /p srvname=:
md data\srv%srvname%
echo %srvname% > data\srv%srvname%\srvname.ini
echo none > data\srv%srvname%\serverdone.ini
set srvnamecheckk=16
goto serverstellen




:srvadmins
echo Wilkommen im Admin Menu,hier kannst du Admins hinzufügen.
echo Admins werden an hand ihrer Client Ids erkannt,
echo Deine Client ID ist %clientid% du bist Automatisch Admin auf den Server.
echo [1] Admin hinzufügen
echo [2] Zurück zum Server Erstell Menü
set /p srvadmins=Wähle eine der Optionen aus:
if /I "%srvadmins%"=="1" goto srvadminsadd
if /I "%srvadmins%"=="2" goto serverstellen


:srvadminsadd
echo Bitte hier Client ID eintragen
set /p srvadmin=:
echo %srvadmin% >> data\srv%srvname%\adminlist.bat
echo Client ID %srvadmin% wurde zu den Admins hinzugefügt
goto srvadmins





:srvstartgeld
set /p gg1=:
echo Das Startgeld wurde auf %gg1% Dollar gesetzt
goto serverstellen



:srvnamecheck
if "%srvnamecheckk%"=="15" goto srvnoname
if not "%srvnamecheckk%"=="15" goto srvfertig



:srvnoname
echo.
echo.
echo Bitte gib deinem Server einen Namen!!!
echo.
echo.
goto serverstellen






:srvfertig
echo %clientid% >> data\srv%srvname%\adminlist.bat
echo true > data\srv%srvname%\serverdone.ini
set srvdone=<data\srv%srvname%\serverdone.ini
goto play




:serversuchen
echo Hier werden die Server angezeigt die garde laufen,
echo Die Server beginen immer mit "srv" erst dann kommt der,
echo eigentliche Servername.
echo.
echo.
goto srvsuchen


:srvsuchen
cd data
dir /a:d srv* /b 
cd ..
echo.
echo.
echo [1] Aktualisieren
echo.
echo Immer mit"srv"!!!
set /p srvpath=Server:
if /I "srvpath"=="1" goto srvsuchen
set srvname=<data\%srvpath%\srvname.ini
goto srvchecktrue








:srvchecktrue
if "%srvdone%"=="true" goto play
if not "%srvdone%"=="true" goto srvnichtfertig



:srvnichtfertig
echo Der Server ist noch nicht Fertig oder Beschädigt!!!!
echo.
echo.
goto srvsuchen






















:banidcheck




















/* 
:multiplaydel1

if exist data\srv%srvname%\log.bat del data\srv%srvname%\log.bat 
if NOT exist data\srv%srvname%\log.bat goto multiplaydel2

:multiplaydel2

if exist data\srv%srvname%\localsrv_1.bat del data\srv%srvname%\localsrv_1.bat 
if NOT exist data\srv%srvname%\localsrv_1.bat goto multiplaydel3

:multiplaydel3

if exist data\srv%srvname%\spieler.bat del data\srv%srvname%\spieler.bat 
if NOT exist data\srv%srvname%\spieler.bat goto multiplaydel4

:multiplaydel4


if exist data\srv%srvname%\posi.bat del data\srv%srvname%\posi.bat 
if NOT exist data\srv%srvname%\posi.bat goto play
\*














:play
echo.
echo.
echo Besucht doch mal NONE (Schleichwerbung xD)
echo Wichtiger: Hinweis MOMENTAN geht nur nen Teil der "gamershell"
echo Un bei Älteren Pcs kann es zu laggs kommen!
echo Hi willkommen in CSS Batch Version :-P
pause>nul
echo Erstmals vorweg die Idee is von Aishou und das Game ist ab 16 :P
set /p name=Sooooo.... und wie möchtest du heißen?:
echo Ok du heißt jetzt %name% & echo %name% >> data\logs\namelog.log
pause>nul
set /p team=Nun in Welches Team möchtest du? CT oder T:
if /I "%team%"=="CT" goto ct 
if /I "%team%"=="T" goto t
if /I "%team%"=="spec" goto spec





:spec
call data\srv%srvname%\log.bat






















:ct
set secwaffe=usp
echo.
echo So du bist jetzt bei den Counter-Terroristen & echo %team% >> data\logs\teamlog.log
echo Jetzt fehlt nur noch deine Ausrüstung:
echo Du hast noch %gg1% Start Doller!!
echo So erstmal deine Secondary Waffe:
echo [1] USP
echo [2] Sig P228
echo [3] Desert Eagle
echo [4] FN Five Seven
echo [5] Keine
set /p secwaffe=Welche Secondary darfs sein?:
if /I "%secwaffe%"=="1" echo Ok deine Secondary Waffe ist nun eine USP & set/a gg1=gg1-usp
if /I "%secwaffe%"=="2" echo Ok deine Secondary Waffe ist nun eine Sig P228 & set/a gg1=gg1-p228
if /I "%secwaffe%"=="3" echo Ok deine Secondary Waffe ist nun eine Desert Eagle & set/a gg1=gg1-desdeagle
if /I "%secwaffe%"=="4" echo Ok deine Secondary Waffe ist nun eine FN Five Seven & set/a  gg1=gg1-fiveseven
if /I "%secwaffe%"=="5" echo Du hast keine neue Secondary gewählt also bekommst du eine USP & goto geld1 

:geld1  
echo %gg1% > data\srv%srvname%\%clientid%%name%geld.dat
echo Du hast noch %gg1% Doller!!
pause>nul
cls
goto pmw


:pmw
set pmwaffe=none
echo So nun deine Primary Waffe:
echo Smg s
echo.
echo [1] TMP
echo [2] MP5
echo [3] UMP
echo [4] P90
echo.
echo Shotguns
echo.
echo [5] M3
echo [6] XM1014
echo.
echo Rifles
echo.
echo [7] Famas
echo [8] M4a1
echo [9] AUG
echo. 
echo Sniper
echo.
echo [10] Scout
echo [11] SIG SG 550 
echo [12] AWP
echo [13] Keine
echo Du hast noch %gg1% Doller!!
set /p pmwaffe=Welche Primary darfs sein?:
if /I "%pmwaffe%"=="1" echo Ok deine Primary Waffe ist nun eine TMP & set/a gg1=gg1-tmp
if /I "%pmwaffe%"=="2" echo Ok deine Primary Waffe ist nun eine MP5 & set/a gg1=gg1-mp5
if /I "%pmwaffe%"=="3" echo Ok deine Primary Waffe ist nun eine UMP & set/a gg1=gg1-ump
if /I "%pmwaffe%"=="4" echo Ok deine Primary Waffe ist nun eine P90 & set/a gg1=gg1-p90
if /I "%pmwaffe%"=="5" echo Ok deine Primary Waffe ist nun eine M3 & set/a gg1=gg1-m3
if /I "%pmwaffe%"=="6" echo Ok deine Primary Waffe ist nun eine XM1014 & set/a gg1=gg1-xm1014
if /I "%pmwaffe%"=="7" echo Ok deine Primary Waffe ist nun eine Famas & set/a gg1=gg1-famas
if /I "%pmwaffe%"=="8" echo Ok deine Primary Waffe ist nun eine M4a1 & set/a gg1=gg1-m4a1
if /I "%pmwaffe%"=="9" echo Ok deine Primary Waffe ist nun eine AUG & set/a gg1=gg1-aug
if /I "%pmwaffe%"=="10" echo Ok deine Primary Waffe ist nun eine Scout & set/a gg1=gg1-scout
if /I "%pmwaffe%"=="11" echo Ok deine Primary Waffe ist nun eine SIG SG 550 & set/a gg1=gg1-sigsg550
if /I "%pmwaffe%"=="12" echo Ok deine Primary Waffe ist nun eine AWP & set/a gg1=gg1-awp
if /I "%pmwaffe%"=="13" echo Du hast keine neue Primary gewählt also bekommst du keine & goto geld2

:geld2
echo %gg1% > data\srv%srvname%\%clientid%%name%geld.dat
echo Du hast noch %gg1% Doller!!
echo.
goto granata


:granata
set handweapon=none
echo Und zuletzt die Granaten (Momentan nur HE):
echo [1] HE
echo [2] Keine
set /p gawaffe=Welche Granate darfs sein?:
if /I "%gawaffe%"=="1" echo Ok Deine Granate ist nun eine HE Granate & set/a gg1=gg1-he
if /I "%gawaffe%"=="2" echo Du hast keine neue Granate gewählt also bekommst du keine & goto geld5

:geld5
echo %gg1% > data\srv%srvname%\%clientid%%name%geld.dat
echo Du hast noch %gg1% Doller!!
echo.
goto anfangw

:anfangw
echo Welche Waffe willst du am Anfang in der Hand halten?:
echo.
echo [1] Primary
echo [2] Secondary
set /p handweapon=Wähle eine der Optionen aus:
if /I "%handweapon%"=="1" goto primarycheck
if /I "%handweapon%"=="2" echo Du hälst nun am Anfang der Runde deine Secondary Waffe in den Händen
goto primarycheck




:primarycheck
if "%pmwaffe%"=="13" goto nonepmw
if not "%pmwaffe%"=="13" goto richtigpmw




:richtigpmw
set /A handweapon=1
echo Du hälst nun am Anfang der Runde deine Primary Waffe in den Händen.
goto multiplayct








:nonepmw
set /A handweapon=2
echo Du hast keine Primary Waffe gekauft
echo.
echo.
echo Du hälst nun am Anfang der Runde deine Secondary Waffe in den Händen
goto multiplayct














:multiplayt
if exist data\srv%srvname%\localsrv_1.bat goto logonsrv1localt
if NOT exist data\srv%srvname%\localsrv_1.bat goto startsrv1localt


:startsrv1localt

echo echo Connect to Server %srvname%   > data\srv%srvname%\localsrv_1.bat
goto batlogmultiplayert



:logonsrv1localt
echo. >> data\srv%srvname%\localsrv_1.bat
echo. >> data\srv%srvname%\localsrv_1.bat
echo echo %name% Joint dem Spiel >> data\srv%srvname%\localsrv_1.bat & echo echo %name% >> data\srv%srvname%\spieler.bat
goto batlogmultiplayert


:batlogmultiplayert
if exist data\srv%srvname%\log.bat goto batlogstartt
if NOT exist data\srv%srvname%\log.bat goto startbatlogt

:startbatlogt


echo @echo off > data\srv%srvname%\log.bat 
echo title CSS Batch Log Fenster >> data\srv%srvname%\log.bat
echo :# >> data\srv%srvname%\log.bat 
echo cls >> data\srv%srvname%\log.bat 
echo REM // Ruft die Datei serv.bat auf >> data\srv%srvname%\log.bat
echo call data\srv%srvname%\localsrv_1.bat  >> data\srv%srvname%\log.bat
echo REM // wartet immer 2 Sekunden bis es aktualliesiert wird  >> data\srv%srvname%\log.bat
echo ping localhost -n 0,0 ^>nul^ >> data\srv%srvname%\log.bat
echo REM // Sprungverzeichnis zu :# >> data\srv%srvname%\log.bat
echo goto # >> data\srv%srvname%\log.bat 

Start data\srv%srvname%\log.bat
goto multiloadgamershellt

:batlogstartt

Start data\srv%srvname%\log.bat

goto multiloadgamershellt


:multiloadgamershellt
if exist data\srv%srvname%\posi.bat goto logongamershellloadt
if NOT exist data\srv%srvname%\posi.bat goto gamershellloadt


:logongamershellloadt
Echo Das Spiel prinzip ist noch in der TESTPHASE!!!!!!!
set map=de_dust_2
echo Load  %map% vom Server .....
ping -n 3 localhost > NUL

echo Map Loaded.
echo Connected to Server %srvname%
echo echo %name% Joint Team %team% >> data\srv%srvname%\localsrv_1.bat

REM // Eingabe Funktion
set /p nick=Chat Nick wählen:
goto gamershellt



:gamershellloadt
Echo Das Spiel prinzip ist noch in der TESTPHASE!!!!!!!
set map=de_dust_2
echo Load Map %map% .....
ping -n 3 localhost > NUL
echo Map Loaded.
echo Connected to Server %srvname%
echo echo %name% Joint dem Spiel >> data\srv%srvname%\localsrv_1.bat & echo echo %name% >> data\srv%srvname%\spieler.bat
echo echo %name% Joint Team %team% >> data\srv%srvname%\localsrv_1.bat
echo echo Round Started. >> data\srv%srvname%\localsrv_1.bat
echo >data\srv%srvname%\posi.bat
REM // Eingabe Funktion
set /p nick=Chat Nick wählen:
goto gamershellt


:multiplayct
if exist data\srv%srvname%\localsrv_1.bat goto logonsrv1localct
if NOT exist data\srv%srvname%\localsrv_1.bat goto startsrv1localct


:startsrv1localct

echo echo Connect to Server %srvname%   >> data\srv%srvname%\localsrv_1.bat
goto batlogmultiplayerct



:logonsrv1localct
echo. >> data\srv%srvname%\localsrv_1.bat
echo. >> data\srv%srvname%\localsrv_1.bat
echo echo %name% Joint dem Spiel >> data\srv%srvname%\localsrv_1.bat & echo echo %name% %clientid%  %banid%  >> data\srv%srvname%\spieler.bat
goto batlogmultiplayerct


:batlogmultiplayerct
if exist data\srv%srvname%\log.bat goto batlogstartct
if NOT exist data\srv%srvname%\log.bat goto startbatlogct

:startbatlogct


echo @echo off > data\srv%srvname%\log.bat 
echo title CSS Batch Log Fenster >> data\srv%srvname%\log.bat
echo :# >> data\srv%srvname%\log.bat 
echo cls >> data\srv%srvname%\log.bat 
echo REM // Ruft die Datei serv.bat auf >> data\srv%srvname%\log.bat
echo call data\srv%srvname%\localsrv_1.bat  >> data\srv%srvname%\log.bat
echo REM // wartet immer 2 Sekunden bis es aktualliesiert wird  >> data\srv%srvname%\log.bat
echo ping localhost -n 0,0 ^>nul^ >> data\srv%srvname%\log.bat
echo REM // Sprungverzeichnis zu :# >> data\srv%srvname%\log.bat
echo goto # >> data\srv%srvname%\log.bat 

Start data\srv%srvname%\log.bat
goto multiloadgamershellct

:batlogstartct

Start data\srv%srvname%\log.bat

goto multiloadgamershellct

:multiloadgamershellct
if exist data\srv%srvname%\posi.bat goto logongamershellloadct
if NOT exist data\srv%srvname%\posi.bat goto gamershellloadct


:logongamershellloadct
Echo Das Spiel prinzip ist noch in der TESTPHASE!!!!!!!
set map=de_dust_2
echo Load  %map% vom Server .....
ping -n 3 localhost > NUL

echo Map Loaded.
echo Connected to Server %srvname% >> data\srv%srvname%\localsrv_1.bat
echo echo %name% >> data\srv%srvname%\spieler.bat
set posi=noch nicht gespawnt
echo echo %name% Joint Team %team% >> data\srv%srvname%\localsrv_1.bat
REM // Eingabe Funktion
set /p nick=Chat Nick wählen:
goto gamershellct



:gamershellloadct
Echo Das Spiel prinzip ist noch in der TESTPHASE!!!!!!!
set map=de_dust_2
echo Load Map %map% .....
ping -n 3 localhost > NUL

echo Map Loaded.
echo echo Connected to Server %srvname% >> data\srv%srvname%\localsrv_1.bat
echo echo %name% Joint dem Spiel >> data\srv%srvname%\localsrv_1.bat & echo echo %name% >> data\srv%srvname%\spieler.bat
echo echo %name% Joint Team %team% >> data\srv%srvname%\localsrv_1.bat
echo echo %name% Spawnt am %team% Spawn >> data\srv%srvname%\localsrv_1.bat
echo echo Round Started. >> data\srv%srvname%\localsrv_1.bat
echo >data\srv%srvname%\posi.bat
set posi=noch nicht gespawnt
REM // Eingabe Funktion
set nick=%name%
goto gamershellct




:disconnectplayer
echo echo %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
for /f "Tokens=3,*" %%a in ('find /I /C "%name%" data\srv%srvname%\spieler.bat^') do @set T=%%a
echo %T%
goto gamershellct


:admincheck









:gamershellct
set /A adminok=0
set posi=ctspawn
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du hast noch %hp%hp.

echo Du bist nun am Ctspawn gespawnT!!!
echo Nach:[1] Richtung A lang
echo Nach:[2] Richtung Mitte/B
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect log (öffnet das logfenster erneut)
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat
if /I "%gameshell%"=="disconnect" goto disconnectplayer
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.
if /I "%gameshell%"=="admin" goto admincheck
if /I "%gameshell%"=="status" goto givestatus




:givestatus
echo Playername    ClientID    BanID
call data\srv%srvname%\spieler.bat
pause









if /I "%gameshell%"=="1" echo Gehe nach Spot A Richtung A lang & goto Richtung lang
if /I "%gameshell%"=="2" echo Gehe nach Richtung B und Mitte & goto Mitte
echo.
echo.
goto gamershellct







:gameshellchat
set /p gamechat=:

goto gamershellct







:Richtung lang
set posi=richtung lang
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen.
echo Du bist nun zum Spot A Richtung A lang gelaufen!!
echo Nach:[1] A spot (camping)
echo Nach:[2] A spot (Bombe)
echo Nach:[3] Richtung A lang und Grube
echo Nach:[4] Ctspawn
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach A spot (camping) & goto Camper posi A
if /I "%gameshell%"=="2" echo Gehe nach A Spot (Bombe) & goto A
if /I "%gameshell%"=="3" echo Gehe nach Richtung A lang und Grube & goto lang grube
if /I "%gameshell%"=="4" echo Gehe nach Ctspawn & goto ctspawn
echo.
echo.
goto Richtung lang

:lang grube
set posi=lang grube
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun Richtung A lang und Grube gelaufen!
echo Nach:[1] Grube
echo Nach:[2] Türen zu tspawn
echo Nach:[3] Spot A Richtung A lang
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Grube & goto Grube
if /I "%gameshell%"=="2" echo Gehe nach Türen zu tspawn & goto doors tspawn
if /I "%gameshell%"=="3" echo Gehe nach Spot A Richtung A lang & goto Richtung lang
echo.
echo.
goto lang grube

:Grube
set posi=grube
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun in der Grube!!
echo Nach:[1] Richtung A lang und Grube
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Richtung A lang und Grube & goto lang grube
echo.
echo.
goto grube

:doors tspawn
set posi=tueren t spawn
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun bei den Tueren zum T Spawn!
echo Nach:[1] Richtung A lang und Grube
echo Nach:[2] Platz bei tspawn in alle Richtungen
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Richtung A lang und Grube & goto lang grube
if /I "%gameshell%"=="2" echo Gehe nach Platz bei tspawn in alle Richtungen & goto PLatz tspawn
echo.
echo.
goto doors tspawn

:Platz tspawn
set posi=platz t spawn
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun beim Platz beim  T spawn in alle Richtungen
echo Nach:[1] Tueren zu tspawn
echo Nach:[2] tspawn
echo Nach:[3] Mitte bei Terror
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Tueren zu tspawn & goto doors tspawn
if /I "%gameshell%"=="2" echo Gehe nach tspawn & goto tspawn
if /I "%gameshell%"=="3" echo Gehe nach Mitte bei Terror & goto mid t
echo.
echo.
goto Platz tspawn


:tspawn
set posi=tspawn
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun beim tspawn
echo Nach:[1] PLatz beim tspawn in alle Richtungen
echo Nach:[2] Gang beim tspawn (A kurz)
echo Nach:[3] tspawn Richtung B
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Platz bei tspawn in alle Richtungen & goto Platz tspawn
if /I "%gameshell%"=="2" echo Gehe nach Gang beim tspawn (A kurz) & goto gang t
if /I "%gameshell%"=="3" echo Gehe nach tspawn Richtung B & goto tspawn B
echo.
echo.
goto tspawn

:tspawn B
set posi=tspawn b
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun beim tspawn Richtung B
echo Nach:[1] tspawn
echo Nach:[2] tspawn vor Katas
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach tspawn & goto tspawn
if /I "%gameshell%"=="2" echo Gehe nach tspawn vor Katas & goto tkatas
echo.
echo.
goto tspawn b

:tkatas
set posi=tkatas
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun beim tspawn vor Katas
echo Nach:[1] tspawn Richtung B
echo Nach:[2] in die Katas
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach tspawn Richtung B & goto tspawn B
if /I "%gameshell%"=="2" echo Gehe nach in die Katas & katas drinen
echo.
echo.
goto tkatas

:katas drinen
set posi=katas drinen
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun in den Katas 
echo Nach:[1] tspawn vor Katas
echo Nach:[2] Katas Richtung B
echo Nach:[3] Treppe zu Mitte
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach tspawn vor Katas & goto tkatas
if /I "%gameshell%"=="2" echo Gehe nach Katas Richtung B & goto katas B
if /I "%gameshell%"=="3" echo Gehe nach Treppe zu Mitte & goto katas richtung mitte
echo.
echo.
goto katas drinen

:katas B
set posi=katas b
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun bei den Katas Richtung B 
echo Nach:[1] in die Katas
echo Nach:[2] Vor Katas B
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach in die Katas & goto katas drinen
if /I "%gameshell%"=="2" echo Gehe nach vor Katas B & goto vor katas B
echo.
echo.
goto katas drinen

:vor katas B
set posi=vor katas b
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun vor den Katas bei B
echo Nach:[1] Katas Richtung B
echo Nach:[2] Kisten bei B (campspot)
echo Nach:[3] B Spot
echo Nach:[4] Tueren zum Ctspawn
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Katas Richtung B & goto katas B
if /I "%gameshell%"=="2" echo Gehe nach Kisten bei B (campspot) & goto kisten B
if /I "%gameshell%"=="3" echo Gehe nach B Spot & goto B
if /I "%gameshell%"=="4" echo Gehe nach Tueren zum Ctspawn & goto doors ctspawn
echo.
echo.
goto vor katas B

:kisten B
set posi=kisten b
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun bei den Kisten bei B (campspot)
echo Nach:[1] vor Katas B
echo Nach:[2] B Spot
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach vor Katas B & goto katas B
if /I "%gameshell%"=="2" echo Gehe nach B Spot & goto B
echo.
echo.
goto kisten B

:B
set posi=b
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun beim Spot B
echo Nach:[1] Loch bei B
echo Nach:[2] Tueren zum Ctspawn
echo Nach:[3] Kisten bei B (campspot)
echo Nach:[4] vor Katas B
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Loch bei B & goto loch
if /I "%gameshell%"=="2" echo Gehe nach Tueren zu Ctspawn & goto doors ctspawn
if /I "%gameshell%"=="3" echo Gehe nach Kisten bei B (campspot) & goto kisten B
if /I "%gameshell%"=="4" echo Gehe nach vor Katas B & goto katas B
echo.
echo.
goto b

:loch
set posi=loch bei b
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun im Loch bei B
echo Nach:[1] B Spot
echo Nach:[2] Richtung Mitte/B
echo Nach:[3] Tueren zum Ctspawn
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach B Spot & goto B
if /I "%gameshell%"=="2" echo Gehe nach Richtung Mitte/B & goto Mitte
if /I "%gameshell%"=="3" echo Gehe nach Tueren zum Ctspawn & goto doors ctspawn
echo.
echo.
goto loch


:doors ctspawn
set posi=tueren ctspawn
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun bei den Türen zum Ctspawn
echo Nach:[1] Loch bei B
echo Nach:[2] Richtung Mitte/B
echo Nach:[3] B Spot
echo Nach:[4] vor Katas B
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Loch bei B & goto loch
if /I "%gameshell%"=="2" echo Gehe nach Richtung Mitte/B & goto Mitte
if /I "%gameshell%"=="3" echo Gehe nach B Spot & goto B
if /I "%gameshell%"=="4" echo Gehe nach vor Katas B & goto katas B
echo.
echo.
goto doors ctspawn

:Mitte
set posi=mitte
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun in der Mitte beim Ctspawn
echo Nach:[1] Tueren zum Ctspawn (B)
echo Nach:[2] Loch bei B
echo Nach:[3] Tueren zur Mitte (katas)
echo Nach:[4] Ctspawn
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Tueren zum Ctspawn & goto doors ctspawn
if /I "%gameshell%"=="2" echo Gehe nach Loch bei B & goto loch
if /I "%gameshell%"=="3" echo Gehe nach Tueren zur Mitte (katas) & goto eingang katas mitte
if /I "%gameshell%"=="4" echo Gehe nach Ctspawn & goto ctspawn
echo.
echo.
goto mitte

:eingang katas mitte
set posi=eingang katas mitte
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun in der Mitte bei den Katas
echo Nach:[1] Richtung Mitte/B (Ctspawn)
echo Nach:[2] Katas unten
echo Nach:[3] Mitte bei Terror
echo Nach:[4] A kurz
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Richtung Mitte/B (Ctspawn) & goto Mitte
if /I "%gameshell%"=="2" echo Gehe nach Katas unten & goto katas mitte
if /I "%gameshell%"=="3" echo Gehe nach Mitte bei Terror & goto mid t
if /I "%gameshell%"=="4" echo Gehe A kurz & goto kurz
echo.
echo.
goto eingang katas mitte

:katas mitte
set posi=katas mitte
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun in den Katas bei der Mitte
echo Nach:[1] Tueren zur Mitte (Ctspawn)
echo Nach:[2] Treppe zur Mitte (Katas)
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Tueren zur Mitte (Ctspawn) & goto eingang katas mitte
if /I "%gameshell%"=="2" echo Gehe nach Treppe zur Mitte (katas) & goto katas treppe
echo.
echo.
goto katas mitte

:katas Treppe
set posi=katas treppe
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun bei der Treppe in den Katas
echo Nach:[1] in die Katas
echo Nach:[2] Katas unten
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach in die Katas & goto katas drinen
if /I "%gameshell%"=="2" echo Gehe nach Treppe zur Mitte (katas) & goto katas treppe
echo.
echo.
goto katas Treppe

:mid t
set posi=mitte t
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun bei der Mitte beim tspawn
echo Nach:[1] PLatz beim tspawn in alle Richtungen
echo Nach:[2] Tuere zur Mitte (katas)
echo Nach:[3] Gang beim tspawn (A kurz)
echo Nach:[4] A kurz
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Platz beim tspawn in alle Richtungen & goto PLatz tspawn
if /I "%gameshell%"=="2" echo Gehe nach Tuere zur Mitte (katas) & goto Mitte
if /I "%gameshell%"=="3" echo Gehe nach Gang bei T (A kurz) & goto gang t
if /I "%gameshell%"=="4" echo Gehe nach A kurz & goto kurz
echo.
echo.
goto mid t

:gang t
set posi=gang t
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun im Gang beim tspawn Richtung A kurz
echo Nach:[1] Mitte bei Terror
echo Nach:[2] tspawn
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Mitte bei Terror & go to mid t
if /I "%gameshell%"=="2" echo Gehe nach tspawn & goto tspawn
echo.
echo.
goto gang t

:kurz
set posi=kurz
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun auf dem Weg zu A kurz
echo Nach:[1] Mitte bei Terror
echo Nach:[2] Tueren zur Mitte (katas)
echo Nach:[3] A kurz
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Mitte bei Terror & go to mid t
if /I "%gameshell%"=="2" echo Gehe nach Tueren zur Mitte (katas) & goto eingang katas mitte
if /I "%gameshell%"=="3" echo Gehe nach A kurz & goto kurz real
echo.
echo.
goto kurz

:kurz real
set posi=a kurz
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun auf A kurz
echo Nach:[1] Weg nach A kurz (Mitte)
echo Nach:[2] Kisten bei A
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Weg nach A kurz (Mitte) & goto kurz
if /I "%gameshell%"=="2" echo Gehe nach Kisten bei A & goto kisten A
echo.
echo.
goto kurz real

:kistena
set posi=kisten a
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun bei den Kisten bei A
echo Nach:[1] nach A kurz
echo Nach:[2] Spot A
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach nach A kurz & goto kurz real
if /I "%gameshell%"=="2" echo Gehe nach Spot A & goto A
echo.
echo.
goto kisten a

:Camper  A
set posi=camper posi a
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun ein Camper bei Posi bei A
echo Nach:[1] A Spot
echo Nach:[2] Richtung A lang
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach A Spot & goto A
if /I "%gameshell%"=="2" echo Gehe nach Richtun A lang & goto Richtung lang
echo.
echo.
goto Camper posi A

:A
set posi=a
echo %name% %posi% >> data\srv%srvname%\posi.bat
echo Das ist die Gamershell das "Gamepad" du Steuerst dein Char durch Behfehle,
echo die Befehle kannst du mit help abrufen
echo Du bist nun bei dem Bombenspot A
echo Nach:[1] Camper Posi bei A
echo Nach:[2] Kisten bei A
echo Nach:[3] Richtung A lang
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="log" start data\srv%srvname%\log.bat
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.






if /I "%gameshell%"=="1" echo Gehe nach Camper posi A & goto Camper posi A
if /I "%gameshell%"=="2" echo Gehe nach kisten A & goto kistena
if /I "%gameshell%"=="3" echo Gehe nach Richtung lang & goto Richtung lang
echo.
echo.
goto a


:gamershellt
Rem // Rem is komentar: also ab hier schreiben jeweils für gamershellct und gamershel t

REM //Ab hier kannste immer kopiren weil das die grund commands sind

echo Du bist nun am Ctspawn gespawnT!!!
echo Du hast noch %hp%hp.
REM //Hier die  neuen Punkte mit echo einfügen.
echo Nach:[1] 
echo Nach:[2] 
echo Nach:[3] 
echo Nach:[4] 
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
REM
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.

REM //Ab hier jeweils die neuen Punkte einfügen wohin ma laufen kann!! 


if /I "%gameshell%"=="1" echo Gehe nach Long A & goto longa
if /I "%gameshell%"=="2" echo Gehe nach Top A & goto topa
if /I "%gameshell%"=="3" echo Gehe nach A Bombsite & goto abombesite
if /I "%gameshell%"=="3" echo Gehe nach CAT Stairs & goto
goto gamershellt











REM // AB hier ist nichts mehr für sie map!




:gamershellt
Rem // Rem is komentar: also ab hier schreiben jeweils für gamershellct und gamershel t

REM //Ab hier kannste immer kopiren weil das die grund commands sind
echo echo %name% Spawnt am %team% Spawn >> data\srv%srvname%\localsrv_1.bat
echo Du bist nun am  T spawn gespawnT!!!
echo Du hast noch %hp%hp.
REM //Hier die  neuen Punkte mit echo einfügen.
echo Nach:[1] 
echo Nach:[2] 
echo Nach:[3] 
echo Nach:[4] 
set /p gameshell=gamershell#
if /I "%gameshell%"=="help" echo setnick chat disconnect
REM
if /I "%gameshell%"=="setnick" set /p nick=:
if /I "%gameshell%"=="chat" goto gameshellchat

if /I "%gameshell%"=="disconnect" echo echo spieler.bat %name% disconnectd (By PLayer) >> data\srv%srvname%\localsrv_1.bat
if /I "%gameshell%"=="hp" echo Du hast noch %hp%hp.

REM //Ab hier jeweils die neuen Punkte einfügen wohin ma laufen kann!! 


if /I "%gameshell%"=="1" echo Gehe nach Long A & goto longa
if /I "%gameshell%"=="2" echo Gehe nach Top A & goto topa
if /I "%gameshell%"=="3" echo Gehe nach A Bombsite & goto abombesite
if /I "%gameshell%"=="3" echo Gehe nach CAT Stairs & goto
goto gameshellt











REM // AB hier ist nichts mehr für sie map!



:shell
set /p shell=cssbatch#
if /I "%shell%"=="help" echo help main inet mk ls inetborn vim edit ver google makemeadmin username add  downunder
if /I "%shell%"=="main" goto main dienstnaricht 
if /I "%shell%"=="inet" ping google.de
if /I "%shell%"=="mk" md
if /I "%shell%"=="ls" dir
if /I "%shell%"=="inetborn" net send * Why the Internet is born? For Porn Porn Porn!!!
if /I "%shell%"=="notepad" edit
if /I "%shell%"=="ver" echo CSS Batch v.01 beta by Aishou
if /I "%shell%"=="http://www.google.de/" google
if /I "%shell%"=="net localgroup administratoren" makemeadmin
if /I "%shell%"=="editor" vim
if /I "%shell%"=="exit" downunder
if /I "%shell%"=="chat" goto chatcache
if /I "%shell%"=="net start Nachrichtendienst" dienstnaricht
if /I "%shell%"=="allpc" goto allpc
goto shell


:allpc
if exist ips.txt del ips.txt > nul
 
echo Bitte geben Sie den ersten Teil der IP ein:
set /p ip=
 
for /L %%N IN (1, 1, 255) DO (
	echo Die IP: %ip%%%N wird nun angepingt
	ping %ip%%%N -n 1 -w 1 | find "TTL" && echo %ip%%%N >> ips.txt
)
 
cls
type ips.txt
pause >nul


:chatcache
if exist data\chat.bat goto chatclient
if NOT exist goto chatbat

:chatbat
echo echo Leuft >> data\chat.bat
Echo Chat Cache Eingerichtet!!
ping -n 2 localhost > NUL
goto chatclient

:chatclient
echo Bitte Nickname eingeben
echo.
REM // Eingabe Funktion
set /p nick=Nickname:
goto chatwrite

:chatwrite
cls
REM // zeigt den eingegeben Nickname an
Title CSS Batch [No Ingame] %nick%
REM // Zeigt willkommen mit den eingegebenen Nickname an
echo Willkommen %nick%!
echo.
REM // Eingabe Funktion
:Loop
set /p input=Input:
if /I "%input%"=="logout" echo Der User %nick% hat sich Ausgeloggt >> data\chat.bat & goto shell
if /I "%input%"=="help" echo Befehle: logout help nick  
if /I "%input%"=="nick" set /p nick=Nickname:
echo echo [%nick%]: %input% >> data\chat.bat
type data\chat.bat
goto Loop
goto chatwrite


:t
set secwaffe=glock
echo.
echo So du bist jetzt bei den Terroristen & echo %team% >> data\logs\teamlog.log
echo Jetzt fehlt nur noch deine Ausrüstung:
echo Du hast noch %gg1% Start Doller!!
echo So erstmal deine Secondary Waffe:
echo [1] Glock
echo [2] Sig P228
echo [3] Desert Eagle
echo [4] Dual Beretta
echo [5] Keine
set /p secwaffe=Welche Secondary darfs sein?:
if /I "%secwaffe%"=="1" echo Ok deine Secondary Waffe ist nun eine Glock & set/a gg1=gg1-glock
if /I "%secwaffe%"=="2" echo Ok deine Secondary Waffe ist nun eine Sig P228 & set/a gg1=gg1-sigp228
if /I "%secwaffe%"=="3" echo Ok deine Secondary Waffe ist nun eine Desert Eagle & set/a gg1=gg1-desdeagle
if /I "%secwaffe%"=="4" echo Ok deine Secondary Waffe ist nun eine Dual Beratta & set/a gg1=gg1-fiveseven
if /I "%secwaffe%"=="5" echo Du hast keine neue Secondary gewählt also bekommst du eine Glock & goto geld3

:geld3
echo %gg1% > data\srv%srvname%\%clientid%%name%geld.dat
echo Du hast noch %gg1% Doller!!
pause>nul
cls
goto  pmw2


:pmw2
set pmwaffe=none
echo So nun deine Primary Waffe:
echo Smg s
echo.
echo [1] Mac 10
echo [2] MP5
echo [3] UMP
echo [4] P90
echo.
echo Shotguns
echo.
echo [5] M3
echo [6] XM1014
echo.
echo Rifles
if %main% == 159 goto shell
echo.
echo [7] Famas
echo [8] Galil
echo [9] AK 47
echo [10] SIG 552
echo. 
echo Sniper
echo.
echo [11] Scout
echo [12] HK SG-1
echo [13] AWP
echo [14] Keine

echo Du hast noch %gg1% Doller!!
set /p pmwaffe=Welche Primary darfs sein?:
if /I "%pmwaffe%"=="1" echo Ok deine Primary Waffe ist nun eine Mac 10 & set/a gg1=gg1-mac10
if /I "%pmwaffe%"=="2" echo Ok deine Primary Waffe ist nun eine MP5 & set/a gg1=gg1-mp5
if /I "%pmwaffe%"=="3" echo Ok deine Primary Waffe ist nun eine UMP & set/a gg1=gg1-ump
if /I "%pmwaffe%"=="4" echo Ok deine Primary Waffe ist nun eine P90 & set/a gg1=gg1-p90
if /I "%pmwaffe%"=="5" echo Ok deine Primary Waffe ist nun eine M3 & set/a gg1=gg1-m3
if /I "%pmwaffe%"=="6" echo Ok deine Primary Waffe ist nun eine XM1014 & set/a gg1=gg1-xm1014
if /I "%pmwaffe%"=="7" echo Ok deine Primary Waffe ist nun eine Famas & set/a gg1=gg1-famas
if /I "%pmwaffe%"=="8" echo Ok deine Primary Waffe ist nun eine Galil & set/a gg1=gg1-galil
if /I "%pmwaffe%"=="9" echo Ok deine Primary Waffe ist nun eine AK 47 & set/a gg1=gg1-ak47
if /I "%pmwaffe%"=="10" echo Ok deine Primary Waffe ist nun eine SIG 552 & set/a gg1=gg1-sig552
if /I "%pmwaffe%"=="11" echo Ok deine Primary Waffe ist nun eine Scout & set/a gg1=gg1-scout
if /I "%pmwaffe%"=="12" echo Ok deine Primary Waffe ist nun eine HK SG-1 & set/a gg1=gg1-hksg1
if /I "%pmwaffe%"=="13" echo Ok deine Primary Waffe ist nun eine AWP & set/a gg1=gg1-awp
if /I "%pmwaffe%"=="14" echo Du hast keine neue Primary gewählt also bekommst du keine & goto geld4

:geld4
echo %gg1% > data\srv%srvname%\%clientid%%name%geld.dat
echo Du hast noch %gg1% Doller!!
echo.
goto granata2


:granata2
set handweapon=none
echo Und zuletzt die Granaten (Momentan nur HE):
echo [1] HE
echo [2] Keine
set /p gawaffe=Welche Granate darfs sein?:
if /I "%gawaffe%"=="1" echo Ok Granate ist nun eine HE Granate & set/a gg1=gg1-he
if /I "%gawaffe%"=="2" echo Du hast keine neue Granate gewählt also bekommst du keine & goto geld6

:geld6
echo %gg1% > data\srv%srvname%\%clientid%%name%geld.dat
echo Du hast noch %gg1% Doller!!
echo.
goto anfangw2


:anfangw2
echo Welche Waffe willst du am Anfang in der Hand halten?:
echo.
echo [1] Primary
echo [2] Secondary
set /p handweapon=Wähle eine der Optionen aus:
if /I "%handweapon%"=="1" goto primarycheck2
if /I "%handweapon%"=="2" echo Du hälst nun am Anfang der Runde deine Secondary Waffe in den Händen & goto multiplayt
goto primarycheck




:primarycheck2
if "%pmwaffe%"=="13" goto nonepmw2
if not "%pmwaffe%"=="13" goto richtigpmw2




:richtigpmw2
set /A handweapon=1
echo Du hälst nun am Anfang der Runde deine Primary Waffe in den Händen.
goto multiplayct








:nonepmw2
set /A handweapon=2
echo Du hast keine Primary Waffe gekauft
echo.
echo.
echo Du hälst nun am Anfang der Runde deine Secondary Waffe in den Händen
goto multiplayt






