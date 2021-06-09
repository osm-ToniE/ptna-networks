#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="DE-BY-TON"

PTNA_TIMEZONE="Europe/Berlin"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[wikidata~'^(Q7042|Q10421|Q10419|Q10420|Q14803|Q10423)$'][type=boundary];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Tarif Oberpfalz Nord|Nahverkehrsgemeinschaft Weiden–Neustadt|Regionalbus Ostbayern|Stadtbus Weiden|Verkehrsgemeinschaft Amberg-Sulzbach|Verkehrsgemeinschaft Tirschenreuth|Landkreislinien Schwandorf"
NETWORK_SHORT="TON|NWN|RBO|VAS|VGT"

ANALYSIS_PAGE="Oberpfalz/Transportation/TON-Analyse"
ANALYSIS_TALK="Talk:Oberpfalz/Transportation/TON-Analyse"
WIKI_ROUTES_PAGE="Oberpfalz/Transportation/TON-Linien"

ANALYSIS_OPTIONS="--language=de --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --max-error=10 --check-access --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

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
PTNA_WWW_REGION_NAME="Region Nördliche Oberpfalz (Städte Amberg, Weiden in der Oberpfalz, Landkreise Amberg-Sulzbach, Neustadt a. d. Waldnaab, Schwandorf, Tirschenreuth)"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation[wikidata~'^(Q7042|Q10421|Q10419|Q10420|Q14803|Q10423)$'][type=boundary]%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Tarif Oberpfalz Nord"
PTNA_WWW_NETWORK_LINK="https://www.ton-tarif.de/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="TON Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
