#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="BR-MG-BHTrans"

PTNA_TIMEZONE="America/Sao_Paulo"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[wikidata=Q42800][type=boundary];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Empresa de Transporte e Trânsito de Belo Horizonte"
NETWORK_SHORT="BHTRANS|BR:MG:Belo Horizonte"

ANALYSIS_PAGE="Belo_Horizonte/Public_Transport/Analysis"
ANALYSIS_TALK="Talk:Belo_Horizonte/Public_Transport/Analysis"
WIKI_ROUTES_PAGE="Belo_Horizonte/Public_Transport/Analysis/BHTrans_Lines"

ANALYSIS_OPTIONS="--language=pt_BR --check-access --check-way-type --check-bus-stop --check-roundabouts --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=allow --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-platform
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
PTNA_WWW_REGION_NAME="Belo Horizonte / Minas Gerais"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%0A%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B%0A%0A(%0A%0A%20%20relation%5B%22wikidata%22%3D%22Q42800%22%5D%3B%0A)%3B%0Aout%20body%3B%0A%3E%3B%0Aout%20skel%20qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Empresa de Transporte e Trânsito de Belo Horizonte (BHTRANS)"
PTNA_WWW_NETWORK_LINK=""

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussão"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="BHTrans Linhas"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
