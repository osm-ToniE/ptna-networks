#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="FR-PDL-Aleop_44"

PTNA_TIMEZONE="Europe/Paris"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area[wikidata~'^(Q28476540|Q612145|Q669556|Q596603|Q702180|Q180843)$'][type=boundary];(rel(area)[~'route'~'(train|tram|bus)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Aléop|Aléop - Loire Atlantique|Aléop en Loire-Atlantique|"
NETWORK_SHORT=""

ANALYSIS_PAGE="Pays_de_la_Loire/Transports_en_commun/Analyse"
ANALYSIS_TALK="Talk:Pays_de_la_Loire/Transports_en_commun/Analyse"
WIKI_ROUTES_PAGE="Pays_de_la_Loire/Transports_en_commun/Aléop_en_Loire-Atlantique/PTNA_csv"

ANALYSIS_OPTIONS="--language=fr --check-bus-stop --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --max-error=10 --check-access --check-dates --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --check-platform --check-roundabouts --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

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
PTNA_WWW_REGION_NAME="Arrondissements de Châteaubriant-Ancenis, Cholet, La Roche-sur-Yon, Nantes, Radon, Saint-Nazaire"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=[out%3Ajson][timeout%3A25]%3B(relation[wikidata~%27^(Q28476540|Q612145|Q596603|Q669556|Q702180|Q180843)%24%27][type%3Dboundary]%3B)%3Bout+body%3B%3E%3Bout+skel+qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Aléop"
PTNA_WWW_NETWORK_LINK="https://aleop.paysdelaloire.fr/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Lignes Aléop"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
