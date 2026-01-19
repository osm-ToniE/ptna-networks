#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="CL-RM-DTPM"

PTNA_TIMEZONE="America/Santiago"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area[wikidata='Q2131'][type=boundary];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Red Metropolitana de Movilidad|Metro de Santiago|EFE Trenes de Chile|Bus de Acercamiento Aeropuerto"
NETWORK_SHORT=""

ANALYSIS_PAGE="Chile/Public_Transport/Analysis"
ANALYSIS_TALK="Talk:Chile/Public_Transport/Analysis/CL-DTPM-Routes"
WIKI_ROUTES_PAGE="Chile/Public_Transport/Analysis/CL-DTPM-Routes"

ANALYSIS_OPTIONS="--timezone=$PTNA_TIMEZONE --language=es --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --check-access --check-dates --check-way-type --check-service-type --check-bus-stop --check-name-relaxed --check-stop-position --check-sequence --check-roundabouts --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --expect-network-short
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Región Metropolitana de Santiago"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Btype%3Dboundary%5D%5Bwikidata='Q2131'%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Red Metropolitana de Movilidad;Metro de Santiago;EFE Trenes de Chile"
PTNA_WWW_NETWORK_LINK="https://www.red.cl/;https://www.metro.cl/;https://www.efe.cl/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discusiones"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Recorridos"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
