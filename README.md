# Introduction #
<br>
The script is based on the fix of this video made by Kamikaze DAN. Go check it out if you're more of a GUI person.
<br>
https://www.youtube.com/watch?v=71HrZfR_Fro
<br>
<br>

# Step by step instruction #
**Downloading the script and running it via Powershell (GUI yet to be added)**

<details>
  <summary>
  
## Powershell ##
  </summary>
  
**1. Starting Powershell as admin** <br>
Win + R shortcut and type **pwsh** and follow with Ctrl + Shift + Enter shortcut to start powershell as admin

<br>

**2. Downloading script to desktop via Powershell** <br>
```powershell
iwr -uri https://raw.githubusercontent.com/RoMinjun/voicemeeterfix/main/voicemeeterfix.ps1 -OutFile $env:USERPROFILE\Desktop\voicemeeterfix.ps1 -Verbose
```

<br>

**3. Running script** <br>
This command 
```powershell
.$env:USERPROFILE\Desktop\voicemeeterfix.ps1 -v
```

</details>

<br>

# Troubleshooting #

**Possible issues that could occure**
<br>

> :warning: **voicemeeter.ps1 cannot be loaded because running scripts is disabled on this system**

```powershell
Set-ExecutionPolicy Bypass $env:USERPROFILE\Desktop\voicemeeterfix.ps1
```
