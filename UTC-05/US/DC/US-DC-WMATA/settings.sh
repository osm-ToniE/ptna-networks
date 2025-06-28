#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="US-DC-WMATA"

PTNA_TIMEZONE="US/Eastern"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:900];area[wikidata~'^(Q107126|Q341915|Q88|Q61|Q488659|Q26807|Q495310|Q408744|Q501785)$'][type=boundary];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Washington Metropolitan Area Transport Authority|WMATA Metrobus|Washington Metro"
NETWORK_SHORT="WMATA"

ANALYSIS_PAGE="Washington_DC/WMATA"
ANALYSIS_TALK="Talk:Washington_DC/WMATA"
WIKI_ROUTES_PAGE="Washington_DC/WMATA/PTNA"

ANALYSIS_OPTIONS="--language=en --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --check-access --check-dates --check-way-type --check-service-type --check-bus-stop --check-roundabouts --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

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
PTNA_WWW_REGION_NAME="Washington metropolitan area"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%0A%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B%0A%0A%28%0A%0A++relation%5B%22wikidata%22%3D%22Q107126%22%5D%3B%0A++relation%5B%22wikidata%22%3D%22Q341915%22%5D%3B%0A++relation%5B%22wikidata%22%3D%22Q88%22%5D%3B%0A++relation%5B%22wikidata%22%3D%22Q61%22%5D%3B%0A++relation%5B%22wikidata%22%3D%22Q488659%22%5D%3B%0A++relation%5B%22wikidata%22%3D%22Q26807%22%5D%3B%0A++relation%5B%22wikidata%22%3D%22Q495310%22%5D%3B%0A++relation%5B%22wikidata%22%3D%22Q408744%22%5D%3B%0A++relation%5B%22wikidata%22%3D%22Q501785%22%5D%3B%0A++%0A%29%3B%0Aout+body%3B%0A%3E%3B%0Aout+skel+qt%3B%7B%7Bdata%3Aoverpass%2Cserver%3D%2F%2Foverpass-api.de%2Fapi%2F%7D%7D"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Washington Metropolitan Area Transport Authority"
PTNA_WWW_NETWORK_LINK="https://wmata.com/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="WMATA Routes"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
