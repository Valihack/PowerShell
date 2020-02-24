Add-Type –AssemblyName System.Speech
$SpeechSynthesizer = New-Object –TypeName System.Speech.Synthesis.SpeechSynthesizer
$SpeechSynthesizer.Speak('DAVID ERES GILIPOLLAS')
#https://www.scriptinglibrary.com/languages/powershell/powershell-text-to-speech/
