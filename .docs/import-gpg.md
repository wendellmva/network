copy your xxxxxxx.asc file to /home/username/.gpg folder
gpg --import /home/username/.pgp/xxxxxxx.asc

# Tell git about your signing key

From the list of GPG keys, copy the GPG key ID you'd like to use. In this example, the GPG key ID is 3AA5C34371567BD2:

$ gpg --list-secret-keys --keyid-format LONG
/Users/hubot/.gnupg/secring.gpg
------------------------------------
sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]
uid                          Hubot 
ssb   4096R/42B317FD4BA89E7A 2016-03-10
To set your GPG signing key in Git, paste the text below, substituting in the GPG key ID you'd like to use. In this example, the GPG key ID is 3AA5C34371567BD2:

$ git config --global user.signingkey 3AA5C34371567BD2
$ git config --global commit.gpgsign true