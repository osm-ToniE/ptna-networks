#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="AU-NSW-Sydney"

PTNA_TIMEZONE="Australia/Sydney"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area[wikidata='Q3130'][type=boundary];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type=%27route%27](r);)-%3E.routes;(.routes;%3C%3C;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG=""
NETWORK_SHORT=""

ANALYSIS_PAGE="Sydney/Public_transport/PTNA/Analysis"
ANALYSIS_TALK="Talk:Sydney/Public_transport/PTNA/Analysis"
WIKI_ROUTES_PAGE="Sydney/Public_transport/PTNA/Analysis/Sydney_Routes"

ANALYSIS_OPTIONS="--check-gtfs --link-gtfs --show-gtfs --gtfs-feed=AU-NSW-TfNSW --check-access --check-dates --check-way-type --check-service-type --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --relaxed-begin-end-for=train --max-error=10 --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline"

# --check-name-relaxed
# --check-bus-stop
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
#

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Sydney metropolitan area, New South Wales"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation[wikidata='Q3130'][type=boundary]%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Transport for New South Wales"
PTNA_WWW_NETWORK_LINK="https://transportnsw.info/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Sydney Routes"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
