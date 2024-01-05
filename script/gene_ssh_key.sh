
echo "=======generating shh key========="
#get ssh key
ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519
echo "have got ssh key, add it in github"

