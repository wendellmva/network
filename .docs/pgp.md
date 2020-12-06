# Use a gpg key

If you don't have a GPG key you can create one with [this](https://www.youtube.com/watch?v=CEADq-B8KtI&ab_channel=HackerSploit) tutorial. Make sure you export your private key and store it somewhere safely. Once you loose it you cannot recreate it.

Upload via ftp or copy your GPG key into the user folder. The user here is root.

```` bash
$ cp xxxxxxx.asc file to /root/.gpg/xxxxxxx.asc folder
````

Then import your GPG key.

```` bash
$ gpg --import /root/.pgp/xxxxxxx.asc
````

# Tell git about your signing key

From the list of GPG keys, copy the GPG key ID you'd like to use. In this example, the GPG key ID is **3AA5C34371567BD2**:

```` bash
$ gpg --list-secret-keys --keyid-format LONG

/root/.pgp/xxxxxxx.asc
------------------------------------
sec   4096R/3AA5C34371567BD2 2020-03-10 [expires: 2025-03-10]
uid                          Hubot 
ssb   4096R/42B317FD4BA89E7A 2020-03-10
````

To set your GPG signing key in Git, paste the text below, substituting in the GPG key ID you'd like to use. In this example, the GPG key ID is **3AA5C34371567BD2**:

```` bash
$ git config --global user.signingkey 3AA5C34371567BD2
$ git config --global commit.gpgsign true
````