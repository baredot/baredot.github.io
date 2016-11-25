#!/usr/bin/env bash
set -e

WORK_TREE=~
GIT_DIR=~/.baredot
ALIAS_NAME=baredot

CMD="/usr/bin/git --work-tree=$WORK_TREE --git-dir=$GIT_DIR"
ALIAS_CMD="alias $ALIAS_NAME='$CMD'"

function explain() {
    printf '\e[33m'
    echo "$@"
    printf '\e[m'
}
function perform() {
    echo "+ $1"
    eval $1
}

if [ $# -eq 0 ]; then
    explain "Initializing a bare git repository for $WORK_TREE at $GIT_DIR:"
    perform "$CMD init"
    # `perform "git init --bare $GIT_DIR"` would also work

    explain "Ensuring that only manually added files are shown in status:"
    perform "$CMD config status.showUntrackedFiles no"

    explain "That's it! Please add the following \`$ALIAS_NAME\` alias to your" \
            "shell startup script to access the repository:"
    printf '\e[32m'
    echo $ALIAS_CMD
    printf '\e[m'
else
    REPO="$1"
    explain "Cloning $REPO into $GIT_DIR:"
    perform "$CMD clone --no-checkout $REPO"
fi
