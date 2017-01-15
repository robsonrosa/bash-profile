# bash-profile-manager
Keep tracked and up-to-dated my custom aliases for .bash_profile

# Features
- Customizable (via fork)
- Keep same aliases at everywhere
- Or change some aliases in some places creating different profiles
- Easy to create, custom and change between profiles
- Partial set of aliases to reuse in different profiles
- Small set of pre-built aliases

# Collaborate 
- You can help with helpful PR to add more generals aliases to our include files.
- You can also create a new kind of include file, like `windows.sh` or `linux.sh`.

# Usage
- First, fork it (unless you just want to use MY aliases). 
- Then, change the `config.js` file to track your repository.
- Create your own profiles or edit the existing ones to fit your need.
- Run `gulp` to build and generate the dist folder (the default task does everything you need).
- Before the next step, be warned: you are going to lost your current `~\.bash_profile`.
- Run the `\dist\install.sh`. 
- Run `source ~/.bash_profile` to get updated.

So: fork > config > custom > gulp > install > refresh

# Update
- When you change your profiles (and push the changes, of course), you just need do run `update`.
- This command will clone your repo in a temp directory and replace your profiles.
- After that, you can use `reset` to get the changes without reopening your terminal.

(`reset` is just an alias to `source ~/.bash_profile`)

# Change
- To change between profiles, run `change [profile-name]` e.g. `change home`.
- Just use the suffix of the file, i.e. to use `.bash_profile-home`, run `change home`.
- To check the version of current alias profile, call `version`. 