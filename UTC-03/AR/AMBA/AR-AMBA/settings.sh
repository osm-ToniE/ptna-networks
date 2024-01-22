#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="AR-AMBA"

PTNA_TIMEZONE="America/Buenos_Aires"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area[wikidata~'^(Q1486|Q1308616|Q14638682|Q1855418|Q1399432|Q1239732|Q730109|Q2037611|Q2621603|Q2157253|Q1906802|Q1882267|Q2054829|Q2502677|Q2721011|Q2213772|Q1685960|Q2644735|Q2209426|Q2099330|Q2329785|Q2514038|Q2713086|Q2510045|Q1971695)$'][type=boundary];(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG=""
NETWORK_SHORT=""

ANALYSIS_PAGE="ES:Área_Metropolitana_de_Buenos_Aires/transporte_público/análisis"
ANALYSIS_TALK="ES_talk:Área_Metropolitana_de_Buenos_Aires/transporte_público/análisis"
WIKI_ROUTES_PAGE="ES:Área_Metropolitana_de_Buenos_Aires/transporte_público/análisis/AMBA_Rutas"

ANALYSIS_OPTIONS="--language=es --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --check-access --check-way-type --check-service-type --check-bus-stop --check-roundabouts --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --expect-network-short
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Área Metropolitana de Buenos Aires / Argentina"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%0A%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B%0A%0A(%0A%0A%20%20relation%5B%22wikidata%22~%22^(Q1486|Q1308616|Q14638682|Q1855418|Q1399432|Q1239732|Q730109|Q2037611|Q2621603|Q2157253|Q1906802|Q1882267|Q2054829|Q2502677|Q2721011|Q2213772|Q1685960|Q2644735|Q2209426|Q2099330|Q2329785|Q2514038|Q2713086|Q2510045|Q1971695)$%22%5D%3B%0A)%3B%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME=""
PTNA_WWW_NETWORK_LINK=""

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discusiones"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="AMBA Rutas"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
