#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="DE-HB-VBN"

PTNA_TIMEZONE="Europe/Berlin"

# PTNA extract source is an alternative to using Overpass API: use planet extracts. This file has been filtered for relevant data (similar to '[~'route'~'(bus|tram|train|...') during planet handling
PTNA_EXTRACT_SOURCE="$PREFIX.osm.pbf"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name='Verkehrsverbund Bremen/Niedersachsen'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Bremen/Niedersachsen"
NETWORK_SHORT="VBN"

ANALYSIS_PAGE="Bremen/Transport/Analyse"
ANALYSIS_TALK="Talk:Bremen/Transport/Analyse"
WIKI_ROUTES_PAGE="Bremen/Transport/Analyse/DE-HB-VBN-Linien"

ANALYSIS_OPTIONS="--language=de --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --max-error=10 --positive-notes --check-access --check-dates --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop
# --check-motorway-link
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
PTNA_WWW_REGION_NAME="Region Bremen / Niedersachsen"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dpublic_transport%5D%5Bname%3D%27Verkehrsverbund%20Bremen%2FNiedersachsen%27%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Verkehrsverbund Bremen/Niedersachsen"
PTNA_WWW_NETWORK_LINK="https://www.vbn.de/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="VBN Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
