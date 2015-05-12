
# role summary:
# 1. create groups
# 2. create users and add them to groups created in step 1 and create a ssh key
# pair for each of them (all of this using the user module)
# 3. Install a public ssh key to authorized_keys to remotely manage the machine
# 4. Generate ssh keys for github, bitbucket or any other git repo specified
  # in the users variable
# 5. Copy the public key to the control machine
# 6. Template the ~/.ssh/config in order to be able to use the keys
# 7. Template a simple bash script to clone dotfiles repos after a user has
#    manually install his public key in the ssh repo.

#    For dotfiles repo, SSH keys should not be used on shared machines with
#    shared root access unless you want someone to overwrite your git repo.
#    In fact,
#      - use an url in the users variable on machines with shared root acces
#      - Use a ssh repo on machinnes you trust

