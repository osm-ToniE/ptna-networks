#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BW-KV.SHA"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name~'Landkreis Schwäbisch Hall'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="KreisVerkehr Schwäbisch Hall|Kreisverkehr Schwäbisch Hall"
NETWORK_SHORT="KV SHA"

ANALYSIS_PAGE="Landkreis_Schwäbisch_Hall/KV.SHA/Analyse"
ANALYSIS_TALK="Talk:Landkreis_Schwäbisch_Hall/KV.SHA/Analyse"
WIKI_ROUTES_PAGE="Landkreis_Schwäbisch_Hall/KV.SHA/Analyse/DE-BW-KV.SHA-Linien"

ANALYSIS_OPTIONS="--language=de --positive-notes --max-error=10 --check-access --check-name-relaxed --check-sequence --check-osm-separator --check-motorway-link --check-stop-position --multiple-ref-type-entries=analyze --ptv1-compatibility=allow --relaxed-begin-end-for=train,light_rail,subway,monorails,tram,bus --coloured-sketchline"

# --expect-network-long
# --check-bus-stop 
# --expect-network-short

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# column 1 = Name + Link to Analysis Result Page on server
# automatically build by PHP script

# column 2 = Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Landkreis Schwäbisch Hall"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D6%5D%5Bname~%27Landkreis%20Schw%C3%A4bisch%20Hall%27%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# column 3 = Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Kreisverkehr Schwäbisch Hall"
PTNA_WWW_NETWORK_LINK=""

# column 4 = Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# column 5 = Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# column 6 = Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# column 7 Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="KV.SHA Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"

