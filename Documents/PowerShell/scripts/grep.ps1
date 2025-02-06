function grep{
  param(
    [Parameter(Mandatory)]
    [String]$command,
    [Parameter(Mandatory)]
    [String]$find
  )

  $($command) | ForEach-Object {
    if($_.Contains($find)){
      Write-Output $_
    }
  }
  # Write-Output $in | ForEach-Object {
  #   if($_.Contains($find)){
  #     Write-Output $_
  #   }
  # }

}
