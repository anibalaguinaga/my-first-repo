#!/usr/bin/env bash
# File: guessinggame.sh
function guessing {

  number=$(ls | wc -l)

  echo "How many files are in the current directory?"
  echo "Please enter a guess: "

  read guess
}

guessing

while [[ $guess != $number ]]
do
  if [[ $guess -gt $number ]]
  then
    echo "Sorry, too high!!"
    echo "Try again: "
    read newguess
    let guess=$newguess
  else
    echo "Sorry, too low!!"
    echo "Try again: "
    read newguess
    let guess=$newguess
  fi
done

if [[ $guess = $number ]]
then
  echo "Congratulations, guess correct!!"
fi
