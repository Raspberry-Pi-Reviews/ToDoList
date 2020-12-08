#!/bin/sh
echo "Please wait while Simple To-Do List Starts"

sleep 1

spinner() {
    local i sp n
    sp='/~\|'
    n=${#sp}
    printf ''
    while sleep 0.1; do
        printf "%s\b" "${sp:i++%n:1}"
    done
}

printf 'Starting!'
spinner &

sleep 6  

kill "$!" # kill the spinner
echo "  (done!)"

sleep 1

spinner() {
    local i sp n
    sp='/~\|'
    n=${#sp}
    printf ' '
    while sleep 0.1; do
        printf "%s\b" "${sp:i++%n:1}"
    done
}

printf 'Adding Labels!'
spinner &

sleep 6  

kill "$!" # kill the spinner
echo "  (done!)"

sleep 1

echo "Simple To-Do List started!"
sudo python3 ${HOME}/ToDoList/ToDoList.py ${HOME} > ToDoList.log
