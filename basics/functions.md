# Bash Function: push_to_github

## Description

`push_to_github` is a Bash function that automates the Git workflow by adding all changes, committing them with a provided message, and pushing to the current branch of the remote repository.

## Function Definition

```bash
push_to_github() {
  if [ -z "$1" ]; then
    echo "❌ Error: Commit message is required."
    echo "Usage: push_to_github \"your commit message\""
    return 1
  fi

  git add .
  git commit -m "$1"
  git push origin "$(git rev-parse --abbrev-ref HEAD)"
  echo "✅ Changes pushed to GitHub."
}
