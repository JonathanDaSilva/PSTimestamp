function Get-TimeStamp
{
  param(
    [DateTime]$date
  )
  if(-not $date) {
    $date = Get-Date
  }
  $ref  = Get-Date "1/1/1970 00:00:00"
  $date = $date.toUniversalTime()
  return [Int]($date - $ref).TotalSeconds
}

Export-ModuleMember Get-TimeStamp
