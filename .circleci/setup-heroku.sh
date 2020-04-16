<<<<<<< HEAD
<<<<<<< HEAD
/bin/bash
ssh-keyscan -H heroku.com >> ~/.ssh/known_hosts
# If you need access to the heroku CLI to run heroku commands in the deploy step add these lines:
=======
#!/bin/bash
=======
/bin/bash
>>>>>>> 1198863... vege
ssh-keyscan -H heroku.com >> ~/.ssh/known_hosts
<<<<<<< HEAD
If you need access to the heroku CLI to run heroku commands in the deploy step add these lines:
>>>>>>> a87b8cd... vege
=======
# If you need access to the heroku CLI to run heroku commands in the deploy step add these lines:
>>>>>>> 935951e... vege
mkdir -p /usr/local/lib /usr/local/bin
tar -xvzf heroku-linux-amd64.tar.gz -C /usr/local/lib
ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

cat > ~/.netrc << EOF
machine api.heroku.com
  login $HEROKU_LOGIN
  password $HEROKU_API_KEY
EOF

cat >> ~/.ssh/config << EOF
VerifyHostKeyDNS yes
StrictHostKeyChecking no
EOF