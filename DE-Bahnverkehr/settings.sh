#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-Bahnverkehr"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=[timeout:900];area[boundary=administrative][admin_level=2][name='Deutschland'];(rel(area)[route~'(train|light_rail|monorail)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
#NETWORK_LONG="DB InterCityExpress|DB InterCity|DB Regio|Deutsche Bahn AG|Deutsche Bahn|Bayerische Oberlandbahn|Bayerische Eisenbahngesellschaft|Verkehrsverbund Rhein-Neckar|Karlsruher Verkehrsverbund|EuroCity|EuroNight|SBB InterCity|ch-direct|TER Alsace|TER Grand Est|TER Lorraine|ÖBB Nightjet|ÖBB Railjet|ÖBB railjet"
#NETWORK_SHORT="DB|BOB|Alex|VVS|VGN|VVO|VRN|MDV|RMV|NVV|VRB|GVH|ZVON|Agilis|agilis|Thalys|TER|SNCF TGV|TGV|ÖBB|VVT|SBB"
NETWORK_LONG=""
NETWORK_SHORT=""

ANALYSIS_PAGE="WikiProject_Germany/Railway/Route_Network/Analysis"
ANALYSIS_TALK="Talk:WikiProject_Germany/Railway/Route_Network/Analysis"
WIKI_ROUTES_PAGE="WikiProject_Germany/Railway/Route_Network/Analysis/DE-Bahnverkehr-Routes"

ANALYSIS_OPTIONS="--language=de --check-access --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,light_rail,monorail"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=

