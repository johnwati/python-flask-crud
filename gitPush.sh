# echo "=============Adding Files to Commit========="
# git add .
# echo "==========Enter Commit Message =============="  
# read commit_message  
# git commit -m $commit_message
# echo "=============Commit Files to Repo========="
#  git push --set-upstream origin master
# git push
bannerColor 'Installing CRUD.' "blue" "*"
# Display unstaged files
 echo "==========Display unstaged files============"
git status

if [ "$(git status --porcelain)" ]; then
        echo "There are uncommited and unstatged files. Commit them before pushing"
        echo "==========Enter commit message============"
        read commitMessage
        echo "=============Adding Files to Commit========="
        git add .
        git commit -m "$commitMessage"
        git push
        echo "****************Files pushed to GitHub****************"
        # else push all commited and staged files to remote repo
    else
        # git push
        echo "*********** Nothing to commit, working tree clean *****************"
        
    fi
    #Echo message if there is no files to commit, stage or push
    if [ "$(git status --porcelain)" ]; then
        echo "There are no files to commit, stage or push"
    fi