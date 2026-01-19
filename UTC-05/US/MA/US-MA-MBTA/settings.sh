#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="US-MA-MBTA"

PTNA_TIMEZONE="America/New_York"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:900];area[wikidata~'^(Q54076|Q54073|Q54093|Q54079|Q54072|Q54086|Q54082)$'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type=%27route%27](r);)-%3E.routes;(.routes;%3C%3C;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Massachusetts Bay Transportation Authority"
NETWORK_SHORT="MBTA"

ANALYSIS_PAGE="MBTA/Analysis"
ANALYSIS_TALK="Talk:MBTA/Analysis"
WIKI_ROUTES_PAGE="MBTA/Analysis/MBTA-Routes"

ANALYSIS_OPTIONS="--timezone=$PTNA_TIMEZONE --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --allow-coach --check-access --check-dates --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --max-error=20 --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --check-bus-stop --check-roundabouts --expect-network-short"

# --check-platform
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=bus

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Bristol, Essex, Middlesex, Norfolk, Plymouth, Suffolk and Worcester Counties, Massachusetts"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%0A%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B%0A%0A(%0A%0A%20%20relation%5Bwikidata~'^(Q54076|Q54073|Q54093|Q54079|Q54072|Q54086|Q54082)$'%5D%3B%0A)%3B%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Massachusetts Bay Transportation Authority"
PTNA_WWW_NETWORK_LINK="https://www.mbta.com/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="MBTA Routes"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
