# +------------------------------------------------------------------------------------
# | File : 	Retreive_Metadata.ps1
# | Version : 	1.00
# | Author:	Rahul C
# | Purpose : Query the meta data of an instance based on input and display the result. 
# +------------------------------------------------------------------------------------
# | Maintenance History
# | -------------------
# | Name               Date       Version   C/R      Description
# | -----------------------------------------------------------------------------------
# | Rahul C     23-09-2021   1.00    Creation
# +------------------------------------------------------------------------------------


 function Query_Metadata 
{  
    Param (  
        [ Parameter (Mandatory = $true)]  
        [string] $InputData  
    )
    
    try
    {
        Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/$InputData" | ConvertTo-Json -Depth 64  
    }

    catch
    {
        $msg = "Error occured while retreiving metadata"
        write-Output $msg
    }
}

Query_Metadata