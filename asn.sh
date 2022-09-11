
for ip in $(curl https://www.cloudflare.com/ips-v4); do ipset add customer-network $ip; done  # add cloudflare 
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS3215); do ipset add customer-network $ip; done # add Orange S.A 
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS15557); do ipset add customer-network $ip; done # add SFR SA 
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS12322); do ipset add customer-network $ip; done  # add Free SAS
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS5410); do ipset add customer-network $ip; done # add Bouygues Telecom SA
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS6758); do ipset add customer-network $ip; done # add Monaco Telecom S.A.
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS36947); do ipset add customer-network $ip; done # add Telecom Algeria
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS5432); do ipset add customer-network $ip; done # add Proximus NV
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS47377); do ipset add customer-network $ip; done # add Orange Belgium SA
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS26932); do ipset add customer-network $ip; done # add BRAVO TELECOM
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS3303); do ipset add customer-network $ip; done # add Swisscom (Schweiz) AG
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS12392); do ipset add customer-network $ip; done # add Brutele SC
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS51207); do ipset add customer-network $ip; done # add Free Mobile SAS
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS6830); do ipset add customer-network $ip; done # add Liberty Global B.V.
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS6730); do ipset add customer-network $ip; done # add Sunrise UPC GmbH
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS64476); do ipset add customer-network $ip; done # add Shadow SAS
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS6848); do ipset add customer-network $ip; done # add Telenet BVBA
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS36903); do ipset add customer-network $ip; done # add Office National des Postes et Telecommunications ONPT (Maroc Telecom) / IAM (Maroc Telecom)
for ip in $(curl https://asn.ipinfo.app/api/text/list/AS29571); do ipset add customer-network $ip; done # add Orange Côte d'Ivoire





# add cloudflare 
# add Orange S.A 
# add SFR SA 
# add Free SAS
# add Bouygues Telecom SA
# add Monaco Telecom S.A.
# add Telecom Algeria
# add Proximus NV
# add Orange Belgium SA
# add BRAVO TELECOM
# add Swisscom (Schweiz) AG
# add Brutele SC
# add Free Mobile SAS
# add Liberty Global B.V.
# add Sunrise UPC GmbH
# add Shadow SAS
# add Telenet BVBA
# add Office National des Postes et Telecommunications ONPT (Maroc Telecom) / IAM (Maroc Telecom)

