function Get-Randomdigit{
Param ([int]$digit)
$mind = $digit - 1

$mini = "1" + "0" * $mind
$maxi = "9" * $digit
$min = [int]$mini
$max = [int]$maxi

$time = get-date -Format mmssms
$rand0 = [int]$time
$rand = $rand0 + $rand0

$digit = Get-Random -Minimum $min -Maximum $max

return $digit
}