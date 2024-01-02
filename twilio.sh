#!/bin/sh

# twilioを利用して電話をかける(zabbixなどで利用できます
curl -X POST https://api.twilio.com/2010-04-01/Accounts/{key}/Calls.json --data-urlencode "Url=http://demo.twilio.com/docs/voice.xml" --data-urlencode "To=${1}" --data-urlencode "From=+{tel_num}" -u {user}
