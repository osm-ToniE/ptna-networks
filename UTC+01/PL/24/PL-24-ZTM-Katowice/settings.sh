#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="PL-24-ZTM-Katowice"

PTNA_TIMEZONE="Europe/Warsaw"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=[timeout:300];area[boundary=administrative][admin_level=7][wikidata~'^(Q588|Q985640|Q554421|Q104302|Q45197|Q108679|Q103892|Q554585|Q659905|Q158485|Q161605|Q461513|Q158488|Q584055|Q102350|Q553389|Q1001326|Q105084|Q276860|Q553379|Q345293|Q554471|Q11977|Q554760|Q276858|Q161595|Q105060|Q554595|Q554767|Q425965|Q329833|Q553468|Q553472|Q554565|Q553969|Q555554|Q553966|Q393171|Q1001207|Q553363|Q554128|Q553360|Q7342|Q1532946|Q325108|Q553460|Q185798|Q158006|Q841380|Q108672|Q553402|Q731079|Q553706|Q553668|Q651788|Q554553|Q553689)$'];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Zarząd Transportu Metropolitalnego"
NETWORK_SHORT="ZTM"

ANALYSIS_PAGE="Śląskie/Komunikacja_miejska/Analysis/Zarząd_Transportu_Metropolitalnego"
ANALYSIS_TALK="Talk:Śląskie/Komunikacja_miejska/Analysis/Zarząd_Transportu_Metropolitalnego"
WIKI_ROUTES_PAGE="Śląskie/Komunikacja_miejska/Analysis/Zarząd_Transportu_Metropolitalnego/ZTM_Katowice_Linie"

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
PTNA_WWW_REGION_NAME="Górnośląsko-Zagłębiowska Metropolia, Polska"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D7%5D%5Bwikidata~'^(Q588|Q985640|Q554421|Q104302|Q45197|Q108679|Q103892|Q554585|Q659905|Q158485|Q161605|Q461513|Q158488|Q584055|Q102350|Q553389|Q1001326|Q105084|Q276860|Q553379|Q345293|Q554471|Q11977|Q554760|Q276858|Q161595|Q105060|Q554595|Q554767|Q425965|Q329833|Q553468|Q553472|Q554565|Q553969|Q555554|Q553966|Q393171|Q1001207|Q553363|Q554128|Q553360|Q7342|Q1532946|Q325108|Q553460|Q185798|Q158006|Q841380|Q108672|Q553402|Q731079|Q553706|Q553668|Q651788|Q554553|Q553689)$'%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Zarząd Transportu Metropolitalnego"
PTNA_WWW_NETWORK_LINK="https://www.metropoliaztm.pl/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="ZTM Katowice Linie"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
