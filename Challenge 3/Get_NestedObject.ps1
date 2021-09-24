# +------------------------------------------------------------------------------------
# | File : 	Get_NestedObject.ps1
# | Version : 	1.00
# | Author:	Rahul C
# | Purpose : Function that you pass in the object and a key and get back the value.
# +------------------------------------------------------------------------------------
# | Maintenance History
# | -------------------
# | Name               Date       Version   C/R      Description
# | -----------------------------------------------------------------------------------
# | Rahul C     23-09-2021   1.00    Creation
# +------------------------------------------------------------------------------------


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
