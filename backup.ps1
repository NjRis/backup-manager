$source = "C:\Users\Iris\OneDrive\Bureau\IUT"
$destination = "D:\Backups\Projets"
$logFile = "D:\Backups\backup.log"
$retentionDays = 7

$date = Get-Date -Format "yyyy-MM-dd_HH-mm"
$zipPath = "$destination\backup_$date.zip"

if (!(Test-Path $destination)) {
    New-Item -ItemType Directory -Path $destination
}

Compress-Archive -Path $source -DestinationPath $zipPath

Get-ChildItem $destination -Filter "*.zip" |
    Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-$retentionDays) } |
    Remove-Item

"$date - Backup completed: $zipPath" | Out-File -Append $logFile
