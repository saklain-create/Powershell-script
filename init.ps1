$mind = Read-Host -Prompt "Mininum digits"
$maxd = Read-Host -Prompt "Maximum digits"

$num1 = random -min $mind -max $maxd
$num2 = random -min $mind -max $maxd

$num1
$num2

