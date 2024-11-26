#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="PL-02-MPK-Wroclaw"

PTNA_TIMEZONE="Europe/Warsaw"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:300];area[boundary=administrative][admin_level=7][wikidata='Q1799'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Miejskie Przedsiębiorstwo Komunikacyjne|Autobusy we Wrocławiu|Tramwaje we Wrocławiu|Wrocław|Wrocław (komunikacja podmiejska)"
NETWORK_SHORT="MPK"

ANALYSIS_PAGE="Dolnośląskie/Komunikacja_miejska/Analysis/MPK_Wrocław"
ANALYSIS_TALK="Talk:Dolnośląskie/Komunikacja_miejska/Analysis/MPK_Wrocław"
WIKI_ROUTES_PAGE="Dolnośląskie/Komunikacja_miejska/Analysis/MPK_Wrocław/MPK_Wrocław_Linie"

ANALYSIS_OPTIONS="--language=pl_PL --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --max-error=10 --check-access --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --expect-network-long-for=ZTM --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --language=de
# --check-bus-stop
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Wrocław, Dolnośląskie"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D7%5D%5Bwikidata='Q1799'%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="MPK Wrocław"
PTNA_WWW_NETWORK_LINK="https://mpk.wroc.pl/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="MPK Wrocław Linie"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"