# Reference: https://stackoverflow.com/a/50056710/992184
git remote show origin | grep "HEAD branch" | sed 's/.*: //'
