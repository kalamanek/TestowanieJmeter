  # Create temp folder
   z:
	if(!(Test-Path "Z:\GitTemp")){
		Write-Host "old reposytory didn't exist"
		mkdir GitTemp
	}else{
		
		Write-Host "deleting old reposytory"
		Remove-Item -path z:\GitTemp -Force -Recurse
		mkdir GitTemp
	}
	
	
   # Clone TFD Git repository
   git clone https://github.com/kalamanek/kalkulator.git z:\GitTemp
   Write-Host "fresh repository cloned"
	
	cd GitTemp
	
	Write-Host "reunning tests"
	$time = "app_"+(Get-Date -UFormat " %H - %M - %S").ToString()
	mvn test --log-file $time".txt"
	 
	
	Start-Sleep -s 10
