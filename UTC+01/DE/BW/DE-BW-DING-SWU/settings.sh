#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BW-DING-SWU"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=(rel(poly:'
48.4539045 9.9891665 48.4226263 9.8661771 48.3578424 9.8687857 48.3193944 9.9358786 48.3347822 10.1169242 48.4308096 10.0760772')[route~'(bus|tram)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Donau-Iller-Nahverkehrsverbund"
NETWORK_SHORT="DING"
OPERATOR_REGEX="SWU"

ANALYSIS_PAGE="Ulm_Neu-Ulm/Transportation/SWU-Analyse"
ANALYSIS_TALK="Talk:Ulm_Neu-Ulm/Transportation/SWU-Analyse"
WIKI_ROUTES_PAGE="Ulm_Neu-Ulm/Transportation/SWU-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

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
PTNA_WWW_REGION_NAME="Ulm / Neu-Ulm"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=node(around%3A30%2C48.4539045%2C9.9891665%2C48.4226263%2C9.8661771%2C48.3578424%2C9.8687857%2C48.3193944%2C9.9358786%2C48.3347822%2C10.1169242%2C48.4308096%2C10.0760772)%3B%0Aout%3B"

# column 3 = Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Donau-Iller-Nahverkehrsverbund-GmbH, Betreiber Stadtwerke Ulm"
PTNA_WWW_NETWORK_LINK=""

# column 4 = Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# column 5 = Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# column 6 = Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# column 7 Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="SWU Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"

