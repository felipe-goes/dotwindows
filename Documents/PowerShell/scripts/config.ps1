function config{
  param(
    [Parameter(
      Mandatory=$True,
      Position=0
    )]
    [String]
    $firstCommand,

    [Parameter(
      Mandatory=$False,
      Position=1
    )]
    [String[]]
    $listArgs
  )

  $gitDir = "$home\.dotwindows"
  $workTree = $home

  if ($listArgs.Length -eq 0){
    git --git-dir=$gitDir --work-tree=$workTree $firstCommand
  } else {

    $argsString = ""
    $count = 0
    foreach($listArg in $listArgs){
      if ($count -gt 0) {
        $argsString = $argsString + " " + $listArg
      } else {
        $argsString = $listArg
        $count++
      }
    }

    git --git-dir=$gitDir --work-tree=$workTree $firstCommand $argsString
  }

}

