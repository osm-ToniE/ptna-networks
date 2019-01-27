#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BW-VVS"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=(rel(poly:'49.1287145 9.5478093 49.0293208 8.8694578 48.8891013 8.6834519 48.7580000 8.8062314 48.6239348 8.5938594 48.5161551 8.7307291 48.4410462 9.7229035 48.9504628 9.8629993')[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG="Verkehrs- und Tarifverbund Stuttgart"
NETWORK_SHORT="VVS"

ANALYSIS_PAGE="Stuttgart/Transportation/Analyse"
WIKI_ROUTES_PAGE="Stuttgart/Transportation/VVS-Linien-gesamt"

ANALYSIS_OPTIONS="--language=de --check-access --check-stop-position --check-sequence --check-osm-separator --check-osm-separator --check-motorway-link --positive-notes --check-name --multiple-ref-type-entries=analyze --coloured-sketchline"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=
# --max-error=10 
