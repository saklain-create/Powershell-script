function Generate-Random-Number {
    $digit =  Read-Host -Prompt "Number of digits"
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

function Ask-Arithmetic-Question {

    $num1 = Generate-Random-Number
    $num2 = Generate-Random-Number



   # $operator = Get-Random -InputObject @('+', '-', '*', '/')

    $question = "$num1 $operator $num2"
    write-host $question
    Write-Host "What is the result of $question?"
    $answer = Invoke-Expression $question

   

    return $answer
}

function Practice-Arithmetic {
    $operator = Read-Host -Prompt "Select your operator '+', '-', '*', '/' "
    $score = 0
    $numQuestions = 5

    for ($i = 1; $i -le $numQuestions; $i++) {
        $correctAnswer = Ask-Arithmetic-Question

        $userAnswer = Read-Host "Your answer: "

        if ($userAnswer -eq $correctAnswer) {
            Write-Host "Correct!"
            $score++
        } else {
            Write-Host "Incorrect. The correct answer is $correctAnswer."
        }

        Write-Host ""
    }

    Write-Host "Practice session complete. Your score: $score out of $numQuestions."
}

# Start arithmetic practice
Practice-Arithmetic
