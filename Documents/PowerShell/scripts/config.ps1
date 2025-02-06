function config{
  param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$commands
  )

  $gitDir = "$home\.dotwindows"
  $workTree = $home

  git --git-dir=$gitDir --work-tree=$workTree $commands

}

