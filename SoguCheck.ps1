Import-Module c:\windows\temp\sogufilesearch.psm1
$SoguFiles = Get-SoguFileNames -ShowFileNames -SearchFiles
if ($SoguFiles.FilesFound.Length -Eq 0) { New-Item -ItemType file c:\windows\temp\Sogu.Clean }
$SoguFiles.FilesFound | Out-File -FilePath c:\windows\temp\SoguFilesFound.txt