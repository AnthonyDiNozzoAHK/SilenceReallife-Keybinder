
Gui, Show, x30 y40 h610 w960, Keybinder für L.S.P.D.


Gui, Add, Edit, x10 y10 w200 h20 ReadOnly, 1 = Tazer
Gui, Add, Edit, x10 y40 w200 h20 ReadOnly, 2 = Fluchtwanted
Gui, Add, Edit, x10 y70 w200 h20 ReadOnly, 3 = /m anhalten
Gui, Add, Edit, x10 y100 w200 h20 ReadOnly, 4 = /s anhalten
Gui, Add, Edit, x10 y130 w200 h20 ReadOnly, 5 = /m Straße räumen
Gui, Add, Edit, x10 y160 w200 h20 ReadOnly, 6 = Behinderung der Justiz
Gui, Add, Edit, x10 y190 w200 h20 ReadOnly, 7 = Angriff/Beschuss
Gui, Add, Edit, x10 y220 w200 h20 ReadOnly, 8 = Sirene
Gui, Add, Edit, x10 y250 w200 h20 ReadOnly, 9 = Frisk
Gui, Add, Edit, x10 y280 w200 h20 ReadOnly, 0 = Cuff

Gui, Add, Edit, x10 y400 w200 h20 ReadOnly, /hi = Begrüßung
Gui, Add, Edit, x10 y430 w200 h20 ReadOnly, /vk = Verkehrskontrolle
Gui, Add, Edit, x10 y460 w200 h20 ReadOnly, /notstand = Notstand per /gov
Gui, Add, Edit, x10 y490 w200 h20 ReadOnly, /fragen = /o Fragen oder Hilfe
Gui, Add, Edit, x10 y520 w200 h20 ReadOnly, /nb (/dnb) = Nagelband
Gui, Add, Edit, x10 y550 w200 h20 ReadOnly, /ja = /po ja?
Gui, Add, Edit, x10 y580 w200 h20 ReadOnly, /tbye = Ticket closen
Gui, Add, Edit, x10 y610 w200 h20 ReadOnly, /nf = /po noch fragen?
Gui, Add, Edit, x10 y640 w200 h20 ReadOnly, /durch = Durchsuchen bei Kontrolle
Gui, Add, Edit, x10 y670 w200 h20 ReadOnly, /tele = Anruf ablehnen

Gui, Add, Edit, x300 y400 w200 h20 ReadOnly, X = Motor an/aus
Gui, Add, Edit, x300 y430 w200 h20 ReadOnly, Y = /lock
Gui, Add, Edit, x300 y460 w200 h20 ReadOnly, n = BackUp
Gui, Add, Edit, x300 y490 w200 h20 ReadOnly, m = kein Backup mehr
Gui, Add, Edit, x300 y520 w200 h20 ReadOnly, # = /gate
Gui, Add, Edit, x300 y550 w200 h20 ReadOnly, + = /czoll
Gui, Add, Edit, x300 y580 w200 h20 ReadOnly, b = Lights
Gui, Add, Edit, x300 y610 w200 h20 ReadOnly, ^ = /cops und /wanted all
Gui, Add, Edit, x300 y640 w200 h20 ReadOnly, /bye = VK beenden

Gui, Add, Edit, x300 y10 w200 h20 ReadOnly, ALT + 1 = Enter
Gui, Add, Edit, x300 y40 w200 h20 ReadOnly, ALT + 2 = Exit
Gui, Add, Edit, x300 y70 w200 h20 ReadOnly, ALT + 3 = /ram
Gui, Add, Edit, x300 y100 w200 h20 ReadOnly, ALT + 4 = /m Verkehrskontrolle
Gui, Add, Edit, x300 y130 w200 h20 ReadOnly, ALT + 5 = /s Sie sind verhaftet
Gui, Add, Edit, x300 y160 w200 h20 ReadOnly, ALT + 6 = /s zu den Zellen
Gui, Add, Edit, x300 y190 w200 h20 ReadOnly, ALT + 7 = Angriff/Beschuss
Gui, Add, Edit, x300 y220 w200 h20 ReadOnly, ALT + 8 = Absichtliches Anfahren
Gui, Add, Edit, x300 y250 w200 h20 ReadOnly, ALT + 9 = Entführung
Gui, Add, Edit, x300 y280 w200 h20 ReadOnly, ALT + 0 = Verweigerung

Gui, Add, Edit, x590 y10 w200 h20 ReadOnly, Strg + 1 = /s Sofort landen
Gui, Add, Edit, x590 y40 w200 h20 ReadOnly, Strg + 2 = /su Einbruch PD
Gui, Add, Edit, x590 y70 w200 h20 ReadOnly, Strg + 3 = ~nicht belegt~
Gui, Add, Edit, x590 y100 w200 h20 ReadOnly, Strg + 4 = /d Eskorte

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


#IfWinActive, GTA:SA:MP ; Folgende Hotkeys Funktionieren nur wenn GTA SA:MP geöffnet ist
#UseHook
#SingleInstance, force
#Include SAMP.ahk


Ersteller := "Sean Conner" 
Name:= GetPlayerName()


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

~t::
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
return

NumpadEnter::
Enter::
Suspend Permit
Suspend Off
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return

Escape::
Suspend Permit
Suspend Off
SendInput {Escape}
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; Variablen


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

; Hotkeys

1:: 
SendInput t/tazer{enter}
return

2::
SendInput t/su  Flucht(versuch){Left 16}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
return 

3::
SendInput t/m [L.S.P.D.]Fahren Sie sofort rechts ran{!} {enter}
return

4::
SendInput t/s [L.S.P.D.]Bleiben Sie sofort stehen{!} {enter}
return

5::
SendInput t/m [L.S.P.D.]Räumen Sie sofort die Straße{!}{!}{!} {enter}
return

6::
SendInput t/su  Behinderung der Justiz{Left 23}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
return 

7::
SendInput t/su  Angriff/Beschuss{Left 17}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
return 

8:: 
SendInput t/sirene {enter}
return

9:: 
SendInput t/frisk{Space}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
return

0::
SendInput t/cuff{Space}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
return

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

!1::
SendInput t/enter {Enter}
return

!2:: 
SendInput t/exit {Enter}
return

!3::
SendInput t/ram {enter} 
return

!4:: 
SendInput t/m [L.S.P.D.]Allgemeine Verkehrskontrolle{.} Fahren Sie bitte rechts ran{!} {Enter}
return

!5:: 
SendInput t/s Sie sind verhaftet. Steigen Sie sofort in das Fahrzeug ein{!} {Enter}
return

!6:: 
SendInput tBegeben Sie sich sofort zu den Zellen im Police Department{!} {Enter}
return

!7:: 
SendInput t/s Schalten Sie den Motor aus und verlassen Sie das Fahrzeug{!} {Enter}
return

!8::
SendInput t/su  Absichtliches Anfahren von Beamten{Left 35}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
return 

!9::
SendInput t/su  Entführung eines Beamten/Zivilisten{Left 36}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
return

!0::
SendInput t/su  Verweigerung{Left 13}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
return  

^1::
SendInput t/s [L.S.P.D.]Sofort landen{!} {enter}
return

^2::
SendInput t/su  Einbruch in das PD{Left 19}
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
return  
 
^4::
IniRead, Einheit, User.ini, Userdaten, Einheit
Leben := GetPlayerHealth() 
Armour := GetPlayerArmor() 
StandortZ:= GetPlayerZone()
SendInput t/r %Einheit%, Eskortiere Verbrecher zum Police Department {enter}
SendInput t/r Mein Status {|} Leben: %Leben% {|} Armor: %Armour% | Standort: %StandortZ% {enter}
return 



;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

x:: 
SendInput t/motor {enter}
return

y:: 
SendInput t/lock{enter}
return

n::
Leben := GetPlayerHealth() 
Armour := GetPlayerArmor() 
StandortZ:= GetPlayerZone()
StandortC:= GetPlayerCity()
SendInput t/bk {enter}
SendInput t/r Standort: %StandortZ%, %StandortC% | Status: %Leben% HP, %Armour% Armour {enter}
return

m:: 
SendInput t/bkc {enter}
return

b::
SendInput t/lights {enter}
return

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

^::
SendInput t/cops {enter}
Sleep 1000
SendInput t/wanted all {enter}
return

+::
SendInput t/czoll {enter}
return

#::
SendInput t/gate {enter}
return

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

F5::
Suspend
if(A_IsSuspended)
{
	SendInput, t/me hat seinen Keybinder deaktiviert{!} {enter}
} else if (!A_IsSuspended) {
	SendInput, t/me hat seinen Keybindert aktiviert{!} {enter}
}
return


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

; Textbinds

:?:/hi::
Suspend permit
iniread, RankName, User.ini, Rankdaten, RankName
SendInput Guten Tag, mein Name ist %Name%, %RankName% des L.S.P.D. {enter}
Suspend Off
return

:?:/cd::
Suspend Permit
SendInput /s Countdown{!} {Enter}
Sleep 1000
SendInput t/s >>>3<<<{!}{!} {Enter}
Sleep 1000
SendInput t/s >>>2<<<{!}{!} {Enter}
Sleep 1000
SendInput t/s >>>1<<<{!}{!} {Enter}
Sleep 1000
SendInput t/s >>>Los jetzt<<<{!}{!} {Enter}
Suspend Off
return

:?:/vk::
Suspend Permit
iniread, RankName, User.ini, Rankdaten, RankName
SendInput Guten Tag, mein Name ist %Name%, %RankName% des L.S.P.D. {Enter}
Sleep 1000
SendInput tDies ist eine allgemeine Verkehrskontrolle. Bitte zeigen Sie mir Ihren Personalausweis {enter}
Sleep 1000
SendInput tmit /showperso %Name% und ihre Lizensen mit /showlicenses %Name%. {Enter}
Suspend Off
return

:?:/durch::
Suspend Permit
SendInput Tragen Sie illegale Gegenstände bei sich{?} {Enter}
Sleep 1000
SendInput tDarf ich Sie nach illegalen Gegenständen durchsuchen{?} {Enter}
return

:?:/bye::
Suspend Permit
SendInput Vielen Dank für Ihre Koorperation{!} Einen schönen Tag weiterhin. {enter}
return

:?:/tele::
Suspend Permit
SendInput /p {enter}
Sleep 1000
SendInput tIch bin zurzeit nicht zu erreichen. Versuchen Sie es später erneut. {enter}
SendInput t/h {enter}
return

:?:/tw::
Suspend Permit
SendInput Sie haben Wanteds. Möchten Sie die Wanteds gegen ein Ticket eintauschen{?} {enter}
return

:?:/nb::
Suspend Permit
SendInput /nagelband{enter}
SendInput t/me setzt ein Nagelband. {enter}
return

:?:/dnb::
Suspend Permit
SendInput /delnagelband{enter}
SendInput t/me entfernt das Nagelband. {enter}
return

:?:/notstand::
Suspend Permit
SendInput /gov Das L.S.P.D. spricht eine Notstandsituation aus{!} {enter}
Sleep 1000
SendInput t/gov Verlassen Sie nicht ihre Häuser, halten Sie sich von Verbrechern fern{!} {enter}
Sleep 1000
SendInput t/gov Alle Verbrecher ab 1 Wanted werden erschossen. {enter}
return

:?:/fragen::
Suspend Permit
SendInput /o Sie haben Fragen oder benötigen Hilfe? Benutzen Sie /sup [Text] {enter}
SendInput t/o Sie haben einen Cheater oder Hacker gesehen? Nutzen Sie /a {enter}
return

:?:/ja::
Suspend Permit
SendInput /po Guten Tag, wie kann ich Ihnen behilflich sein{?} {enter}
return

:?:/nf::
Suspend Permit
SendInput /po Haben Sie noch weitere Fragen{?} {enter}
return

:?:/tbye::
Suspend Permit
SendInput /po Ich wünsche Ihnen einen schönen Tag und weiterhin viel Spaß{!} {enter}
SendInput t/ct {enter}
return





