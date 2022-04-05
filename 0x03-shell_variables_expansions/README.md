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
