# autosharpshoot
SuperSharpShooterv2 with auto generation of a meterpreter reverse shell to hta with AMSI bypass


Credit to sensi-1337 for the actual work of making  SuperSharpShooterV2 - https://github.com/sensi-1337/SuperSharpShooter

The only change that I made was to add autogeneration of hta payload with amsi bypass.


## Installation
Place entire folder into /opt. 
Install the requirements.txt if needed.
chmod +x autosharpshoot.sh


## Usage
./autosharpshoot.sh <port> #default is port 443.

the output will be payload.hta located inside of the install directory.

the payload will be windows/x64/meterpreter/reverse_https



TODO:
cleanup uneccessary files
support alternative payloads
support alternative output names and locations
