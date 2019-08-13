#! usr/bin/env bash
#guessinggame.sh

function validate() {
    read n
    var=`(ls -l | grep -v ^d | wc -l)`
    if [[ $n -eq $var ]]; then
        echo 'Your answer is correct, Congratulation!!!'
        return 1
    elif [[ $n -lt $var ]]; then
        echo 'You are entered value is too low'
        echo 'Please try to guess again'
    else
        echo 'You are entered value is too high'
        echo 'Please try to guess again'
    fi
    return 0
}

echo 'How many files are in the current directory:'
while true; do
    validate
    if [[ $? -eq 1 ]]; then
        break
    fi
done
