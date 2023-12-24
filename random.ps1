function Get-Randomdigit{
Param ([int]$min,[int]$max)

$mini = "1" + "0" * 2
$maxi = "9" * $max
$min = [int]$mini
$max = [int]$maxi

$time = get-date -Format mmssms
$rand0 = [int]$time
$rand = $rand0 + $rand0

$digit = Get-Random -Minimum $min -Maximum $max -SetSeed $rand

return $digit
}