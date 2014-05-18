
function parse_git_branch {
  if git branch 2>/dev/null 1>/dev/null; then
     GIT_BRANCH=$(echo -n " branch: ";git branch --no-color 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
  else
     GIT_BRANCH=""
  fi
}
