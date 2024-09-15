#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="IL-HA-Hadera"

PTNA_TIMEZONE="Asia/Jerusalem"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:900];area[wikidata='Q5423414'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type=%27route%27](r);)-%3E.routes;(.routes;%3C%3C;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG=""
NETWORK_SHORT=""

ANALYSIS_PAGE="Israel/Public_Transport/PTNA"
ANALYSIS_TALK="Talk:Israel/Public_Transport/PTNA"
WIKI_ROUTES_PAGE="Israel/Public_Transport/PTNA/IL-HA-Hadera-Routes"

ANALYSIS_OPTIONS="--check-gtfs --link-gtfs --show-gtfs --gtfs-feed=IL-MOT --allow-coach --check-access --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --max-error=20 --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --check-bus-stop --check-roundabouts"

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
PTNA_WWW_REGION_NAME="נפת חדרה, מחוז חיפה / Hadera Subdistrict, Haifa District"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%0A%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B%0A%0A(%0A%0A%20%20relation%5Bwikidata%3D'Q5423414'%5D%3B%0A)%3B%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="All public transport associations"
PTNA_WWW_NETWORK_LINK=""

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK= #"https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Hadera, Haifa Routes"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
