"" PowerShell
let powershell='/mnt/c/WINDOWS/system32/WindowsPowerShell/v1.0/powershell.exe'
command! -nargs=1 ExecutePowerShellScript execute 'tabe term://zsh -c ''' . powershell . ' -c ' . <f-args> . ''''
command! InvokePester ExecutePowerShellScript Invoke-Pester -Output Detailed
