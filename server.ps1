Import-Module Pode

# Starting pode server
Start-PodeServer{
    
    Add-PodeEndpoint -Address * -Port 8085 -Protocol Http
   
    # Importing script for program operations
    Use-PodeScript -Path './files-list.ps1'
    
    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
       
        Write-PodeHtmlResponse -Path './views/take-input.pode'
        
      }
    Add-PodeRoute -Method Get -Path '/showfiles' -ScriptBlock {
      
      #  Extracting query from webevent triggered
      $fpath = $WebEvent.Query['fpath']
      
      Get-List $fpath
         
      }
  }
    
    # Add-PodeRoute -Method Get -Path '/showfiles' -ScriptBlock{
        

  

  
    


