#!/bin/zsh

function _exportDir() {
    envName="$1"
    dirName="$2"
    [ ! -d "$dirName" ] && mkdir -p "$dirName"
    export "$envName"="$dirName"
}

function _exportFile() {
    envName="$1"
    fileName="$2"
    dirName="$(dirname $fileName)"
    [ ! -d "$dirName" ] && mkdir -p "$dirName"
    [ ! -f "$fileName" ] && touch "$fileName"
    export "$envName"="$fileName"
}

function extract() {
    fileName="$1"
    echo "Extracting $fileName ......"
    if [[ -f "$fileName" ]]; then
        case "$fileName" in
            *.tar.bz2)  tar xjf $fileName ;;
            *.tar.gz)   tar xzf $fileName ;;
            *.bz2)      bunzip2 $fileName ;;
            *.rar)      unrar x $fileName ;;
            *.gz)       guzip $fileName   ;;
            *.tar)      tar xf $fileName  ;;
            *.tbz2)     tar xjf $fileName ;;
            *.tgz)      tar xzf $fileName ;;
            *.zip)      unzip $fileName   ;;
            *.7z)       7z x $fileName    ;;
            *) echo "'$fileName' can't be extracted via extract()" ;;
        esac
    else
        echo "'$fileName' is not a valid file"
    fi
}

function m1() {
    if [[ "$PWD" =~ ".git" ]]; then
        gitDir="$(echo ${PWD} | sed 's/.git.*/.git/g')"
        cd "$gitDir" && {
            echo "cd to the home of the git workspace '$gitDir'......"
        } || {
            echo "cd to the '$gitDir' failed!"
        }
    fi
}
