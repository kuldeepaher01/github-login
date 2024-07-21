#!/bin/bash

# generate new ssh key
ssh-keygen -t ed25519 -C "kuldeepaher0@gmail.com"

# start ssh-agent in the background
eval "$(ssh-agent -s)"

# add ssh private key to the ssh-agent
ssh-add ~/.ssh/id_ed25519

# copy ssh public key to clipboard
cat ~/.ssh/id_ed25519.pub | xclip -selection clipboard
