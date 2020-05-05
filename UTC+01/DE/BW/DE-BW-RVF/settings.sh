#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BW-RVF"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_traffic][name='Regio-Verkehrsverbund Freiburg'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Regio-Verkehrsverbund Freiburg|Nachtbus Freiburg"
NETWORK_SHORT="RVF|RVF Nachtbus"

ANALYSIS_PAGE="Regio-Verkehrsverbund_Freiburg/Analyse"
ANALYSIS_TALK="Talk:Regio-Verkehrsverbund_Freiburg/Analyse"
WIKI_ROUTES_PAGE="Regio-Verkehrsverbund_Freiburg/Analyse/DE-BW-RVF-Routes"

ANALYSIS_OPTIONS="--language=de --check-access --check-way-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop
# --expect-network-short
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# column 1 = Name + Link to Analysis Result Page on server
# automatically build by PHP script

# column 2 = Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Stadt Freiburg im Breisgau; Landkreis Breisgau-Hochschwarzwald; Landkreis Emmendingen"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dpublic_traffic%5D%5Bname%3D%27Regio-Verkehrsverbund%20Freiburg%27%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# column 3 = Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Regio-Verkehrsverbund Freiburg"
PTNA_WWW_NETWORK_LINK="https://www.rvf.de/"

# column 4 = Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# column 5 = Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# column 6 = Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# column 7 Name + Link to list of expected public transport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="RVF Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
