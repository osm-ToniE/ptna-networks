#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="GH-AA-Accra"

PTNA_TIMEZONE="Africa/Accra"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[wikidata=%27Q3761%27][type=boundary];(rel(area)[route~%27(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)%27][~%27network|operator%27~%27(Fernb|fernb|Flix|flix)%27];rel(br);rel[type=%27route%27](r);)-%3E.routes;(.routes;%3C%3C;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Flixbus"
NETWORK_SHORT=""

ANALYSIS_PAGE="United_States/Transportation/Bus_Routes/Flixbus/Analysis"
ANALYSIS_TALK="Talk:United_States/Transportation/Bus_Routes/Flixbus/Analysis"
WIKI_ROUTES_PAGE="United_States/Transportation/Bus_Routes/Flixbus/Flixbus_Lines"

ANALYSIS_OPTIONS="--check-access --check-bus-stop --check-roundabouts --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --allow-coach 
# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
# 

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# column 1 = Name + Link to Analysis Result Page on server
# automatically build by PHP script

# column 2 = Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Accra Metropolitan / Greater Accra Region"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%0A%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B%0A%0A(%0A%0A%20%20relation%5B%22wikidata%22%3D%22Q3761%22%5D%3B%0A)%3B%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B"

# column 3 = Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="all associations and operators"
PTNA_WWW_NETWORK_LINK=

# column 4 = Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# column 5 = Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# column 6 = Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK= #"https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# column 7 Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Routes in Accra Metropolitan"
PTNA_WWW_ROUTES_LINK= #"https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"

