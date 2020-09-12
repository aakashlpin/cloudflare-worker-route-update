#!/bin/bash
email=$1
apikey=$2
zone_id=$3
route_id=$4
worker=$5
route_pattern=$6

echo "Hello ${email}"
echo "Updating route pattern to ${route_pattern}"
curl -X PUT "https://api.cloudflare.com/client/v4/zones/"${zone_id}"/workers/routes/"${route_id}"" \
-H "X-Auth-Email: "${email}"" \
-H "X-Auth-Key: "${apikey}"" \
-H "Content-Type: application/json" \
--data '{"pattern":"'"${route_pattern}"'","script":"'"${worker}"'"}'

exit 0
