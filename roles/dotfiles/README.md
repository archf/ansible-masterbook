# Update dotfiles on give machine

#Requirement
  - ssh must have been configured or dotfiles must have been cloned manually at
  least once to avoid any ssh or https password prompts.
  - user dotfile url is configured in an external vars files wich is also used
  to create // configure all users account on a machine.
# Special behavior
If the dotfile repo is absent, it will copy over a bashscript to pull dotfiles
and run the 'installer' inside the dotfiles repo to generate all the required
symlinks.

The script is templated on the premise the git account has the same name as the
*nix user account
