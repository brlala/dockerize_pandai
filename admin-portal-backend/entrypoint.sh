FILE="/app/app.py"
USERNAME=$1
PASSWORD=$2
if [ -f "$FILE" ]; then
  # Take action if $FILE exists. #
  echo "Repo exist, skipping steps"
else
  ### Control will jump here if doesn't exist ###
  apt-get update
  apt-get install -y git python-virtualenv gcc g++ unixodbc unixodbc-dev
  git init
  git remote add origin https://"$USERNAME":"$PASSWORD"@bitbucket.org/pandaipteltd/admin-portal-backend.git
  git pull origin master
  git reset --hard HEAD  # Required when the versioned files existed in path before "git init" of this repo.
  git checkout master
  pip install -r requirements.txt
  python startup.py
fi
