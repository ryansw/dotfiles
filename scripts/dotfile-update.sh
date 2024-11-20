dot-pull()
{
    git -C $DOTFILES pull --ff-only >/dev/null || echo [ Error pulling dotfile changes ]
}

dot-push()
{
    git -C $DOTFILES add -A
    git -C $DOTFILES commit -m "Updated dotfiles on $(hostname) at $(date)"
    git -C $DOTFILES push
}

if git -C $DOTFILES diff --exit-code >/dev/null ; then
    dot-pull
else
    echo [ You have uncomitted changes to your dotfiles ]
fi

alias dot-git="git -C $DOTFILES"

