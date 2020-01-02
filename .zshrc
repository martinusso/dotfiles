# Aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# New Tab - Use same directory as previously active tab
function cd {
    builtin cd $@
    pwd > ~/.last_dir
}
if [ -f ~/.last_dir ]
    then cd `cat ~/.last_dir`
fi
