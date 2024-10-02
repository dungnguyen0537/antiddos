curl -X PUT "https://api.cloudflare.com/client/v4/zones/f45118cd00ea0245a6f7e9b80ad5c7d3/firewall/rules/7d6592ebaa9e4bdc95959ce0577fffa7" \
     -H "X-Auth-Email: dungnguyen120737@gmail.com" \
     -H "X-Auth-Key: 89bba666acac57579b5a48189eeb4013d2b9d" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 1000,
     "paused": true,
     "description": "Block Quốc Tế",
     "filter": {
    "id": "8e88bdd952c44bd0b952078620a15b85",
    "expression": "(ip.geoip.country ne \"VN\")",
    "paused": false,
    "description": "Block Quốc Tế"
  }
  }'
