#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="CA-ON-GOT"

PTNA_TIMEZONE="America/Toronto"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:90];area[wikidata~'^(Q1535009|Q1752156|Q730542|Q776930|Q384755|Q1437636|Q34183|Q1145335|Q1525404|Q504114|Q175735|Q384944|Q34180|Q385346|Q2373358)$'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type=%27route%27](r);)-%3E.routes;(.routes;%3C%3C;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="GO Transit"
NETWORK_SHORT="GOT"

ANALYSIS_PAGE="GO_Transit/Analysis"
ANALYSIS_TALK="Talk:GO_Transit/Analysis"
WIKI_ROUTES_PAGE="GO_Transit/Analysis/PTNA/GOT_Routes"

ANALYSIS_OPTIONS="--timezone=$PTNA_TIMEZONE --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --allow-coach --check-access --check-dates --check-way-type --check-service-type --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --max-error=20 --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --check-roundabouts"

# --check-bus-stop
# --check-name-relaxed
# --check-platform
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=bus

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Greater Golden Horseshoe, Ontario"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%0A%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B%0A%0A(%0A%0A%20%20relation%5Bwikidata~'^(Q1535009|Q1752156|Q730542|Q776930|Q384755|Q1437636|Q34183|Q1145335|Q1525404|Q504114|Q175735|Q384944|Q34180|Q385346|Q2373358)$'%5D%3B%0A)%3B%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="GO Transit"
PTNA_WWW_NETWORK_LINK="http://www.gotransit.com/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="GOT Routes"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
