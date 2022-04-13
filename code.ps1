manage-bde -protectors -add c: -recoverypassword
manage-bde.exe -on C: -skiphardwaretest
$BLV = Get-BitLockerVolume -MountPoint "C:"
Backup-BitLockerKeyProtector -MountPoint "C:" -KeyProtectorId $BLV.KeyProtector[1].KeyProtectorId
