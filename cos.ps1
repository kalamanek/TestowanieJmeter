  # Create temp folder
   cd C:
	if(!(Test-Path "C:\GitTemp")){
		Write-Host "old reposytory didn't exist"
		mkdir GitTemp
	}else{
		
		Write-Host "deleting old reposytory"
		Remove-Item -path C:\GitTemp -Force -Recurse
		mkdir GitTemp
	}
	
	
   # Clone TFD Git repository
   git clone https://github.com/kalamanek/kalkulator.git C:\GitTemp
   Write-Host "fresh repository cloned"
	
	cd GitTemp
	
	$time = "app_"+(Get-Date -UFormat " %H - %M - %S").ToString()
	mvn test --log-file $time".txt"
	 
