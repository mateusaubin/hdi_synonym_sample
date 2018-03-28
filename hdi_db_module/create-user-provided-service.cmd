via console, using the XS Advanced Client Tools
 - https://youtu.be/lxY8PwcoSEo
 - https://youtu.be/G3cHfHiJlPA
 
xs login -a https://api.endpoint:30033 -o orgname -s spacename -skip-ssl-validation -u usrn4me -p p@ssw0rd
xs target -s v
xs cups hdi_synonym_sample_SERVICE -p "{\"host\":\"hana.host\", \"port\":\"30015\", \"user\":\"hdi_synonym_sample_USER\", \"password\":\"Rand0mStr1ng\", \"driver\":\"com.sap.db.jdbc.Driver\", \"tags\":[\"hana\"], \"schema\":\"SAPABAP1\"}"

via XSA COCKPIT, go to "User-Provided Services" on the organization and space

New Instance
define instance name (hdi_synonym_sample_SERVICE)
paste the same JSON content as Credentials

{
	"driver":"com.sap.db.jdbc.Driver", 
	"host":"hana.host", 
	"port":"30015", 
	"user":"hdi_synonym_sample_USER", 
	"password":"Rand0mStr1ng", 
	"schema":"SAPABAP1", 
	"tags": [
		"hana"
	] 
}