
Copy the Public Key to the Server
Now that you generated your SSH key pair, the next step is to copy the public key to the server you want to manage.

The easiest and the recommended way to copy your public key to the server is to use a utility called ssh-copy-id. On your local machine terminal type:

ssh-copy-id remote_username@server_ip_address
You will be prompted to enter the remote_username password:
remote_username@server_ip_address's password:
Once the user is authenticated, the public key ~/.ssh/id_rsa.pub will be appended to the remote user ~/.ssh/authorized_keys file and connection will be closed.

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'username@server_ip_address'"
and check to make sure that only the key(s) you wanted were added.
If by some reason the ssh-copy-id utility is not available on your local computer, you can use the following command to copy the public key:

cat ~/.ssh/id_rsa.pub | ssh remote_username@server_ip_address "mkdir -p ~/.ssh && 

The .ssh directory permissions should be 700 (drwx------). 
The public key (.pub file) should be 644 (-rw-r--r--). 
The private key (id_rsa) on the client host 
The authorized_keys file on the server, should be 600 (-rw-------).

sudo systemctl restart ssh

Login to your server using SSH keys
After completing the steps above you should be able to log in to the remote server without being prompted for a password.

To test it, try to login to your server via SSH:

ssh remote_username@server_ip_address
If you haven’t set a passphrase for the private key, you will be logged in immediately. Otherwise, you will be prompted to enter the passphrase.
