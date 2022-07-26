Out-Null

#Check whether voicemeeter*.exe is running
IF (!(ps audiodg))
{
    echo "audiodg is not running.. Starting.."
    start -f C:\Windows\System32\audiodg.exe
}
ELSEIF (!(ps voicemeeter*))
{
    echo "Voicemeeter is not running.."
    echo "Please start voicemeeter and run script again.."
    exit
}
ELSE
{
    #Set cpu priority on high and change affinity to a single cpu core for audio device graph
    $procdg = ps audiodg
    $procdg.ProcessorAffinity=1
    $procdg.PriorityClass="128"

    #Getting Voicemeeter info
    $procvmtr = ps voicemeeter*
    $procvmtrid = $procvmtr.Id
    $vmtrcl = (Get-WmiObject Win32_Process -Filter "Handle=$procvmtrid").CommandLine

    #Killing and starting voicemeeter audio engine
    $procvmtr.Kill()
    $procvmtr.WaitForExit()
    start -f $vmtrcl.Replace('"',"")

}