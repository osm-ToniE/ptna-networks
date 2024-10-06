#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="FR-BRE-ILLENOO2"

PTNA_TIMEZONE="Europe/Paris"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:600];area[wikidata~'^(Q12549|Q12589|Q3349)$'][type=boundary];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="BreizhGo;ILLENOO"
NETWORK_SHORT=""

ANALYSIS_PAGE="Bretagne/Transports_en_commun/KorriGo"
ANALYSIS_TALK="Talk:Bretagne/Transports_en_commun/KorriGo"
WIKI_ROUTES_PAGE="Bretagne/Transports_en_commun/KorriGo/ILLENOO2"

ANALYSIS_OPTIONS="--language=fr --check-bus-stop --link-gtfs --gtfs-feed=FR-BRE-KorriGo --max-error=10 --check-access --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --expect-network-long --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-gtfs
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
# --positive-notes

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Départements Côtes-d'Armor, Ille-et-Vilaine et Manche"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=[out%3Ajson][timeout%3A25]%3B(relation[wikidata~'^(Q12549|Q12589|Q3349)$'][type%3Dboundary]%3B)%3Bout+body%3B%3E%3Bout+skel+qt%3B{{data%3Aoverpass%2Cserver%3D%2F%2Foverpass.openstreetmap.fr%2Fapi%2F}}"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="BreizhGo en Ille-et-Vilaine"
PTNA_WWW_NETWORK_LINK="https://www.breizhgo.bzh/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Lignes ILLENOO2"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
