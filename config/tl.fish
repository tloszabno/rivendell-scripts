alias _ sudo

abbr gf "git fetch"
abbr ga "git add ."
abbr grh "git reset --hard"
abbr gcm "git commit -m"
abbr gca "git commit --amend"
abbr gst "git status"
abbr gl "git log"
abbr gc "git checkout"

alias grhm "git reset --hard origin/master"
alias gcb "git checkout -b"
alias grbm "git rebase origin/master"
alias grbmi "git rebase -i origin/master"
alias gpf "git push --force-with-lease"
alias grhb "git reset --hard origin/(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')"   # rebase with current branch on origin
alias gclean "git branch --merged | grep  -v '\*\|master\|develop' | xargs -n 1 git branch -d"
alias grmi "git rebase -i origin/master"

alias todo "trello add-card -b 'TLOS Board' -l 'Today'"
alias mc "mc --nosubshell"

function fish_greeting
    echo "Helpful abbreviations:"
    abbr
    echo "And aliases:"
    alias
    echo
    echo "Have a nice day!"
    echo
end
