# Skripti tuottaa HTML-pohjaisen tiedoston ryhmäkäytännöistä
# Kysytään polku ja tiedoston nimi:
$Tiedosto = Read-Host "Mihin tallennetaan, anna polku ja nimi"
# Luodaan kaikki GPO:t sisältävä HTML- raportti
Get-GPOReport -All -ReportType html -Path $Tiedosto