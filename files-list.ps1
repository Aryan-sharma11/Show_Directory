function Get-List ($fpath){
    
    $curr_dir = Get-Location

    # Setting location to the given path  ==> equivalent to `cd` command
    Set-Location($fpath)
    
    # Concatenating commandline output to a text file 
    Get-ChildItem | Out-File -FilePath "$curr_dir\result.txt"
    
    #  Reading the text file containing results
    Write-PodeFileResponse -Path '.\result.txt'
}


  




    
