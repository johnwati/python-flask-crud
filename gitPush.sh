echo "=============Adding Files to Commit========="
git add .
echo "==========Enter Commit Message =============="  
read commit_message  
git commit -m $commit_message
echo "=============Commit Files to Repo========="
 git push --set-upstream origin master
git push

