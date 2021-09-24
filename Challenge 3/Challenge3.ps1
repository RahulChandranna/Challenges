Function Get-KPMGValue{
    param( $obj, $key)
    Process{
        $hash = $obj | ConvertFrom-Json
        $key.split('/') | % {
            if($hash.($_)){
                $hash = $hash.($_)
            } Else {
                write-error "Invalid key, failed to find - $_"
            }
        }
        if($hash.GetType().name -eq "string"){
            $value = $hash
        } Else {
            $value = ($hash | gm | ? {$_.membertype -eq "NoteProperty"}).name
        }
        Write-Output $value     
    }
}