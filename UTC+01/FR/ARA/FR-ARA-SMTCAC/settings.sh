#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="FR-ARA-SMTCAC"

PTNA_TIMEZONE="Europe/Paris"

# Use the Wikidata boundary of the departement Drome plus the small boundary Guilherand-Granges to get all bus lines
OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:600];area[wikidata~'^(Q762950|Q784302|Q677735|Q241561|Q608101|Q646289|Q1475214)$'];(rel(area)[~'route'~'(tram|bus)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Syndicat Mixte des Transports en commun de l’agglomération Clermontoise"
NETWORK_SHORT="SMTC-AC|SMTC|T2C"

ANALYSIS_PAGE="Clermont-Ferrand/Transports_en_commun/PTNA/Analyse"
ANALYSIS_TALK="Talk:Clermont-Ferrand/Transports_en_commun/PTNA/Analyse"
WIKI_ROUTES_PAGE="Clermont-Ferrand/Transports_en_commun/PTNA/Lignes-SMTC-AC"

ANALYSIS_OPTIONS="--language=fr --positive-notes --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --max-error=10 --check-platform --check-bus-stop --check-access --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-gtfs
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
# --check-platform
# --check-roundabouts
# --check-motorway-link
# --check-bus-stop

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Clermont Auvergne Métropole, le parc Vulcania et les villes de Sayat, Dallet, Mezel, St Bonnet et Pérignat-sur-Allier"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=[out%3Ajson][timeout%3A25]%3B(relation[wikidata~%27^(Q762950|Q784302|Q677735|Q241561|Q608101|Q646289|Q1475214)%24%27]%3B)%3Bout+body%3B%3E%3Bout+skel+qt%3B{{data%3Aoverpass%2Cserver%3D%2F%2Foverpass.openstreetmap.fr%2Fapi%2F}}"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Syndicat Mixte des Transports en commun de l’agglomération Clermontoise"
PTNA_WWW_NETWORK_LINK="https://www.smtc-clermont-agglo.fr/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Lignes SMTC-AC"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
