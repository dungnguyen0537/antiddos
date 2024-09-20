curl -X PUT "https://api.cloudflare.com/client/v4/zones/4303f61c7dd2170fc9f8525fa23013d9/firewall/rules/4f74dd49986f4286ba13d2ae4e06f2bf" \
     -H "X-Auth-Email: dungnguyen120737@gmail.com" \
     -H "X-Auth-Key: 89bba666acac57579b5a48189eeb4013d2b9d" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 1000,
     "paused": false,
     "description": "Block Quốc Tế",
     "filter": {
    "id": "5f5e591f064a47bebad4a8078afbb51e",
    "expression": "(ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5 and ip.geoip.continent eq \"AS\") or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS \" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5 and ip.geoip.continent eq \"AS\") or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Windows NT\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5 and ip.geoip.continent eq \"AS\") or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5 and ip.geoip.continent eq \"AS\")",
    "paused": false,
    "description": "Block Quốc Tế"
  }
  }'
