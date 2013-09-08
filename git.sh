# show current git configuration
git config -l


# set user name and e-mail address
git config --global user.name "Default User"
git config --global user.email "user@default.com"


# start tracking a project
git init


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


# show summary of commit per user
git shortlog -s


# show the total number of commits
git rev-list HEAD --count


# unstage a staged file
git reset HEAD somefile.txt


# revert back to previously commited state
git checkout -- somefile.txt


