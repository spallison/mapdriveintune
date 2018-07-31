Import-Module ActiveDirectory -ErrorAction "Stop"

$MyUsername = $env:username

$dir = (Get-AdUser $MyUsername -properties * -Server DC01.server.local).HomeDirectory

$dir = $dir.replace('\home', '.server.local\home')




Net use H: $dir /user:$MyUsername 
