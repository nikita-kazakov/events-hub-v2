# Allows Faraday to abstract API calls over net_http adapter (native to Rails).

require 'faraday'
require 'faraday/net_http'
Faraday.default_adapter = :net_http