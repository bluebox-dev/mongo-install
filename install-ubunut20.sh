wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
sudo apt-get install gnupg -y
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl daemon-reload
sudo systemctl enable mongod

### Config Auth mongodb
## connect database : admin
#  use admin
## insert object 
#  db.createUser(
#   {
#     user: "admin",
#     pwd: "xxxxx",
#     roles: [ { role: "root", db: "admin" } ]
#   }
# )
## this file edit : /etc/mongodb.conf
# security:
#     authorization: "enabled"
## end config and edit file.
# service mongod restart