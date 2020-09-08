# Haetaan AD käyttäjän olennaiset tiedot

# Kysytään käyttäjältä, minkä nimiseen tiedostoon tallennetaan käyttäjät
$Tiedosto = Read-Host "Mihin tallennetaan, anna polku"

# Luetaan AD-käyttäjät muuttujaan
$Käyttäjät = Get-ADUser -Filter * -Properties AccountExpirationDate,Office,OfficePhone,DisplayName,Description,whenCreated 

# Putkitetaan tiedot CSV-tiedostoon
$Käyttäjät | Export-Csv -Encoding Unicode -Delimiter  "`t" -Path $Tiedosto