~F12::
	SoundBeep, (toggle := !toggle) ? 1500 : 1000, 20
	SplashTextOn, 300, 100, title, % "Botones Intercambiados para " (toggle ? "Zurdos" : "Diestros") "!"
	SetTimer, SplashOff, -2000
return

SplashOff:
	SplashTextOff
return

LButton::
	Send % toggle ? "{RButton down}" : "{LButton down}"
	KeyWait, LButton
	Send, % toggle ? "{RButton up}" : "{LButton up}"
return

RButton::
	Send % toggle ? "{LButton down}" : "{RButton down}"
	KeyWait, RButton
	Send, % toggle ? "{LButton up}" : "{RButton up}"
return
