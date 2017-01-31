#!/bin/sh
export WORKDIR='/cygdrive/d/work/'
PROJECT_DIR='contra_mario'
PROJECT_NAME='cm'

PROJECT2_DIR='top_shooter'
PROJECT2_NAME='ts'

PS3='Please enter your choice: '
options=("Contra Mario" "Top shooter" "New dotnet session" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Contra Mario")
            cd $WORKDIR
            if [ ! -d  $PROJECT_DIR ] ; then
                mkdir -p $PROJECT_DIR
            fi

            cd $PROJECT_DIR

            tmux has-session -t $PROJECT_NAME 2>/dev/null
            if [ "$?" -eq 1 ] ; then
                echo "no session found. configuring..."
                tmux new-session -d -s $PROJECT_NAME
#                tmux set-option default-path '$PWD'

                #configuring windows
#                tmux new-window -t $PROJECT_NAME:2 -n 'cm' -c $PROJECT_DIR
                tmux split-window -v
                tmux send-keys "cmd.exe" C-m
                tmux split-window -h
                tmux select-pane -t 1
                tmux resize-pane -D 20
                tmux resize-pane -D 20
                tmux select-pane -t 1
                tmux send-keys "vim" C-m

                tmux select-window -t $PROJECT_NAME:1
            else
                echo 'session found. connecting ...'
            fi

            tmux attach-session -t $PROJECT_NAME
            break
            ;;
        "Top shooter")
            echo "you chose choice 2"
            cd $WORKDIR
            if [ ! -d  $PROJECT2_DIR ] ; then
                mkdir -p $PROJECT2_DIR
            fi

            cd $PROJECT2_DIR

            tmux has-session -t $PROJECT2_NAME 2>/dev/null
            if [ "$?" -eq 1 ] ; then
                echo "no session found. configuring..."
                tmux new-session -d -s $PROJECT2_NAME
                tmux split-window -v
                tmux send-keys "cmd.exe" C-m
                tmux split-window -h
                tmux select-pane -t 1
                tmux resize-pane -D 20
                tmux resize-pane -D 20
                tmux select-pane -t 1
                tmux send-keys "vim" C-m

                tmux select-window -t $PROJECT2_NAME:1
            else
                echo 'session found. connecting ...'
            fi

            tmux attach-session -t $PROJECT2_NAME
            ;;
        "New dotnet session")
            echo "you chose choice 3"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
