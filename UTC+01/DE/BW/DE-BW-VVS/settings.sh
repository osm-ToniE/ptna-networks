#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BW-VVS"

#OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=(rel(poly:'49.1287145 9.5478093 49.0293208 8.8694578 48.8891013 8.6834519 48.7580000 8.8062314 48.6239348 8.5938594 48.5161551 8.7307291 48.4410462 9.7229035 48.9504628 9.8629993')[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name~'(Stuttgart|Landkreis Ludwigsburg|Rems-Murr-Kreis|Landkreis Göppingen|Landkreis Esslingen|Landkreis Böblingen)'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG="Verkehrs- und Tarifverbund Stuttgart"
NETWORK_SHORT="VVS"

ANALYSIS_PAGE="Stuttgart/Transportation/Analyse"
ANALYSIS_TALK="Talk:Stuttgart/Transportation/Analyse"
WIKI_ROUTES_PAGE="Stuttgart/Transportation/VVS-Linien-gesamt"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-version --check-access --check-stop-position --check-sequence --check-osm-separator --check-osm-separator --check-motorway-link --positive-notes --check-name-relaxed --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# column 1 = Name + Link to Analysis Result Page on server
# automatically build by PHP script

# column 2 = Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Region Stuttgart"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D6%5D%5Bname~%27(Stuttgart%7CLandkreis%20Ludwigsburg%7CRems-Murr-Kreis%7CLandkreis%20G%C3%B6ppingen%7CLandkreis%20Esslingen%7CLandkreis%20B%C3%B6blingen)%27%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# column 3 = Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Verkehrs- und Tarifverbund Stuttgart"
PTNA_WWW_NETWORK_LINK=""

# column 4 = Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# column 5 = Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# column 6 = Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# column 7 Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="VVS Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"

