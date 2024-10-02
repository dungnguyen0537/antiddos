curl -X PUT "https://api.cloudflare.com/client/v4/zones/f45118cd00ea0245a6f7e9b80ad5c7d3/firewall/rules/bd4ba9ca064e4b04999fef0ba0132327" \
     -H "X-Auth-Email: dungnguyen120737@gmail.com" \
     -H "X-Auth-Key: 89bba666acac57579b5a48189eeb4013d2b9d" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 2000,
     "paused": false,
     "description": "Managed Challenge Việt Nam",
     "filter": {
    "id": "4a3984a577314c06a89139ec7536fa33",
    "expression": "(ip.geoip.country eq \"VN\" and http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and http.user_agent contains \"Chrome/12\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5) or (ip.geoip.country eq \"VN\" and http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS \" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5) or (ip.geoip.country eq \"VN\" and http.user_agent contains \"Mozilla/5.0 (Windows NT\" and http.user_agent contains \"Chrome/12\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5) or (ip.geoip.country eq \"VN\" and http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5)",
    "paused": false,
    "description": "Managed Challenge Việt Nam"
  }
  }'
