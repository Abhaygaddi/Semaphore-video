- name: Manually install updates without using Task Scheduler
  win_shell: |
    Install-Module -Name PSWindowsUpdate -Force -Scope AllUsers -Confirm:$false
    Import-Module PSWindowsUpdate
    Get-WindowsUpdate -AcceptAll -Install -AutoReboot -IgnoreReboot | Out-File C:\temp\update_log.txt
