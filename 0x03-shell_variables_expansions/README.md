## 0.Create a script that creates an alias.

- Name: ls
- Value: rm _
  `#!/bin/bash`
  `alias ls='rm _'`

## 1. Create a script that prints hello user,

where user is the current Linux user.
`#!/bin/bash`
`echo "hello $USER" `

## 2-path: The path to success is to take massive, determined action

Add ]_/action_ to the _PATH_. _/action_ should be the last directory the shell looks into when looking for a program using
`export PATH=$PATH:/action*`

## 4-global_variables: Global variables

Create a script that lists environment variables using _echo $PATH | tr ':' '\n' | wc -l_.

## 5-local_variables: Local variables

Create a script that lists all local variables and environment variables, and functions using _env_.

## 6-create_local_variable: Local variable

Create a script that creates a new local variable with _Name: BETTY Value: Holberton_ using export _BETTY="Holberton"_.

## 7-create_global_variable: Global variable

Create a script that creates a new global variable _Name: HOLBERTON Value: Betty_ using _export HOLBERTON=Betty_.

## 8-true_knowledge: Every addition to true knowledge is an addition to human power

Write a script that prints the result of the addition of 128 with the value stored in the environment variable _TRUEKNOWLEDGE_, followed by a new line using
_export TRUEKNOWLEDGE=1209_
_echo $(($TRUEKNOWLEDGE+128)) or ./8-true_knowledge | cat -e_.

## 9-divide_and_rule: Divide and rule

Write a script that prints the result of _POWER_ divided by _DIVIDE_, followed by a new line. _POWER_ and _DIVIDE_ are environment variables using _export POWER=42784_
_export DIVIDE=32_
_echo $(($POWER/$DIVIDE)) | cat -e or ./9-divide_and_rule | cat -e_

## 10-love_exponent_breath: Love is anterior to life, posterior to death, initial of creation, and the exponent of breath

Write a script that displays the result of _BREATH_ to the power _LOVE_. _BREATH_ and _LOVE_ are environment variables and the script should display the result, followed by a new line using
_export BREATH=4_
_export LOVE=3_
_echo $(($BREATH\*\*$LOVE)) or ./10-love_exponent_breath_

## 11-binary_to_decimal: There are 10 types of people in the world -- Those who understand binary, and those who don't

Write a script that converts a number from base 2 to base 10. The number in base 2 is stored in the environment variable _BINARY_. The script should display the number in base 10, followed by a new line using
_export BINARY=10100111001_
_echo "$((2#$BINARY))" or ./11-binary_to_decimal_

## 12-combinations: Combination

Create a script that prints all possible combinations of two letters, except _oo_. Letters are lower cases, from a to z; One combination per line; The output should be _alpha_ ordered, starting with _aa_; Do not print _oo_; Your script file should contain maximum 64 characters using _echo {a..z}{a..z} | tr ' ' '\n' | grep -v 'oo' or ./12-combinations | wc -l_.

## 13-print_float: Floats

Write a script that prints a number with two decimal places. The number will be stored in the environment variable _NUM_ using
_export NUM=98_
_printf "%0.2f\n" $NUM or ./13-print_float_.

## 14-decimal_to_hexadecimal: Decimal to Hexadecimal

Write a script that converts a number from base 10 to base 16. The number in base 10 is stored in the environment variable _DECIMAL_. The script should display the number in base 16, followed by a new line using
_export DECIMAL=16_

- or ./14-decimal_to_hexadecimal\*

## 100-rot13: Everyone is a proponent of strong encryption

Write a script that encodes and decodes text using the _rot13_ encryption. Assume ASCII.
_cat quote_
_"Everyone is a proponent of strong encryption."_
_- Dorothy E. Denning_
_tr 'A-Za-z' 'N-ZA-Mn-za-m' or ./100-rot13 < quote_

_"Rirelbar vf n cebcbarag bs fgebat rapelcgvba."_
_- Qbebgul R. Qraavat_

## 16.Write a script that prints every other line from the input, starting with the first line.

`#!/bin/bash `
`sed -n 1~2p `

## 17

Write a shell script that adds the two numbers stored in the environment variables WATER and STIR and prints the result.

      WATER is in base water
      STIR is in base stir.
      The result should be in base bestchol

`#!/bin/bash`
`printf "%o\n" $((5#$(echo $WATER|tr water 01234)+5#$(echo $STIR|tr stir. 01234)))|tr 01234567 behlnort`
