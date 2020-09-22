FILE="/app/package.json"
USERNAME=$1
PASSWORD=$2
if [ -f "$FILE" ]; then
  # Take action if $FILE exists. #
  echo "Repo exist, skipping steps"
else
  ### Control will jump here if doesn't exist ###
  echo "Repo does not exist, skipping steps"
  git init
  git remote add origin https://"$USERNAME":"$PASSWORD"@bitbucket.org/pandaipteltd/admin-portal-frontend.git
  git pull origin master
  git reset --hard HEAD  # Required when the versioned files existed in path before "git init" of this repo.
  git checkout master
  apt-get install make gcc*
fi
