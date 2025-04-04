#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="NO-03-Ruter"
GTFS_FEED="NO-Hele"

PTNA_TIMEZONE="Europe/Oslo"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=7][wikidata~'^(Q5245991|Q26525|Q80593157|Q56915|Q57076|Q488607|Q57864|Q57083|Q57918|Q109021|Q45303406|Q54062|Q57081|Q60806432|Q42293305|Q486736|Q57860|Q57870|Q57865|Q57084|Q488026|Q57858|Q57080|Q57917|Q57862)$'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Ruter"
NETWORK_SHORT=""

ANALYSIS_PAGE="Norway/Public_transport/Ruter/Analysis"
ANALYSIS_TALK="Talk:Norway/Public_transport/Ruter/Analysis"
WIKI_ROUTES_PAGE="Norway/Public_transport/Ruter/Analysis/Lines"

ANALYSIS_OPTIONS="--language=no --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$GTFS_FEED --max-error=10 --check-access --check-dates --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

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
PTNA_WWW_REGION_NAME="Oslo og deler av Viken (tidligere Akershus fylke), Drammen, Lier, Rømskog, Trøgstad og Moss i Viken"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D7%5D%5Bwikidata~'^(Q5245991|Q26525|Q80593157|Q56915|Q57076|Q488607|Q57864|Q57083|Q57918|Q109021|Q45303406|Q54062|Q57081|Q60806432|Q42293305|Q486736|Q57860|Q57870|Q57865|Q57084|Q488026|Q57858|Q57080|Q57917|Q57862)$'%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Ruter"
PTNA_WWW_NETWORK_LINK="https://ruter.no/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Ruter Line"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
