#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="DE-Bahnverkehr"

PTNA_TIMEZONE="Europe/Berlin"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:1800];area[boundary=administrative][admin_level=2][name='Deutschland'];(rel(area)[~'route'~'(train|light_rail|monorail)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
#NETWORK_LONG="DB InterCityExpress|DB InterCity|DB Regio|Deutsche Bahn AG|Deutsche Bahn|Bayerische Oberlandbahn|Bayerische Eisenbahngesellschaft|Verkehrsverbund Rhein-Neckar|Karlsruher Verkehrsverbund|EuroCity|EuroNight|SBB InterCity|ch-direct|TER Alsace|TER Grand Est|TER Lorraine|ÖBB Nightjet|ÖBB Railjet|ÖBB railjet"
#NETWORK_SHORT="DB|BOB|Alex|VVS|VGN|VVO|VRN|MDV|RMV|NVV|VRB|GVH|ZVON|Agilis|agilis|Thalys|TER|SNCF TGV|TGV|ÖBB|VVT|SBB"
NETWORK_LONG=""
NETWORK_SHORT=""

ANALYSIS_PAGE="Germany/Railway/Route_Network/Analysis"
ANALYSIS_TALK="Talk:Germany/Railway/Route_Network/Analysis"
WIKI_ROUTES_PAGE="Germany/Railway/Route_Network/Analysis/DE-Bahnverkehr-Routes"

ANALYSIS_OPTIONS="--language=de --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --check-access --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,light_rail,monorail,tram"

# --check-bus-stop
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Deutschland"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D2%5D%5Bname~%27Deutschland%27%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Deutsche Bahn;viele weitere"
PTNA_WWW_NETWORK_LINK="https://www.bahn.de;"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Bahnlinien in DE"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
