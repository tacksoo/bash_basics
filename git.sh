# this is not an executable script ;)

# clone an existing repository
git clone git://github.com/tacksoo/bash_basics.git

# or start tracking a project
git init


# show current git configuration
git config -l


# set user name and e-mail address
git config --global user.name "Default User"
git config --global user.email "user@default.com"


# show remote repositories
git remote -v


# add a remote repository 
git remote add origin git://github.com/someone/somerepo.git


# get code from remote 
git fetch origin


# merge remote's code with the code you have
git merge origin


# start tracking a file
git add readme.txt


# see what changes were made
git status


# commit the change
git commit -m 'added readme'


# compare the working directory with what's on the staging area
git diff


# compare the stages changes to the last commit
git diff --staged


# remove a file from git
rm readme.txt
git rm readme.txt


# move files in git
git mv from.txt to.txt


# look at past commit messages
git log


# show one line summary of the commits
git log --pretty=oneline

# show tree-like view of the commits
git log --graph --oneline

# show summary of commit per user
git shortlog -s


# show the total number of commits
git rev-list HEAD --count


# unstage a staged file
git reset HEAD somefile.txt


# revert back to previously commited state
git checkout -- somefile.txt


# create a branch for tracking a remote repository
git checkout -b somebodyelse-master master


# pull the changes in the remote repository
git pull https://github.com/somebodyelse/some-repo.git master


# merge the changes and update your remote
git checkout master
git merge somebodyelse-master
git push origin master


# delete branch
git branch -d somebodyelse-master


# show all local and remote branch
git branch -a


# if you refer to that remote repository often, add it as one of your remotes
# I will refer to it as 'upstream'
git remote add upstream https://github.com/somebodyelse/some-repo.git 


# stash your changes
git stash


# apply latest stash
git stash apply
git stash pop   # this deletes the stash and then deletes it


# remove stash using its name
git stash drop stash@{0}


# clear stash
git stash clear


# stop tracking changes of a file 
git update-index --assume-unchanged file.txt


