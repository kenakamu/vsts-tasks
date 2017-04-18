param(
    [string] $apiKey,
    [string] $path
)

$nugetPath = "c:\nuget"

Write-Verbose "Create C:\nuget folder"
mkdir $nugetPath 

Write-Verbose "Download Nuget.exe to C:\nuget"
Invoke-WebRequest -Uri "http://go.microsoft.com/fwlink/?LinkID=690216&clcid=0x409" -OutFile $nugetPath\Nuget.exe

Write-Verbose "Add C:\nuget as %PATH%"
$pathenv= [System.Environment]::GetEnvironmentVariable("path")
$pathenv=$pathenv+";"+$nugetPath
[System.Environment]::SetEnvironmentVariable("path", $pathenv)

Write-Verbose "Create NuGet package provider"
Install-PackageProvider -Name NuGet -Scope CurrentUser -Force

Write-Verbose "Publishing module"
Publish-Module -Path $path -NuGetApiKey $apiKey