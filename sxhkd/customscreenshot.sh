scrot 'screenshot_%Y%m%d_%H%M%S.png' -e 'mkdir -p ~/screenshots && mv $f ~/screenshots && xclip -selection clipboard -t image/png -i ~/screenshots/`ls -1 -t ~/screenshots | head -1`'
