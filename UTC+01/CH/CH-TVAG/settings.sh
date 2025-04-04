#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="CH-TVAG"
GTFS_FEED="CH-Alle"

PTNA_TIMEZONE="Europe/Zurich"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area[boundary=administrative][wikidata~'^(Q121410|Q658994|Q659309|Q659597|Q598525|Q656740|Q659293|Q659715|Q659332|Q660753|Q660133|Q660290|Q598278)$'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Tarifverbund A-Welle|A-Welle"
NETWORK_SHORT="TVAG"

ANALYSIS_PAGE="Switzerland:Public_Transport/A-Welle/Analysis"
ANALYSIS_TALK="Talk:Switzerland:Public_Transport/A-Welle/Analysis"
WIKI_ROUTES_PAGE="Switzerland:Public_Transport/A-Welle/Analysis/CH-TVAG-Routes"

ANALYSIS_OPTIONS="--check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$GTFS_FEED --max-error=10 --check-access --check-dates --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --language=de
# --check-bus-stop
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Kanton Aargau (SZ) mit Ausnahme der Bezirke Laufenburg und Rheinfelden, Kanton Solothurn (SO) die östlichen Bezirke Gäu, Gösgen, Olten und Thal"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Bwikidata~%22^(Q121410|Q658994|Q659309|Q659597|Q598525|Q656740|Q659293|Q659715|Q659332|Q660753|Q660133|Q660290|Q598278)$%22%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Tarifverbund A-Welle «A-Welle»"
PTNA_WWW_NETWORK_LINK="https://www.a-welle.ch/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="A-Welle Lines"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
