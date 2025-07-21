#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="FR-SNCF"

PTNA_TIMEZONE="Europe/Paris"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=[timeout:600];area[wikidata='Q212429'][type='boundary'];(rel(area)[~'route'~'(train|light_rail|monorail)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Société nationale des chemins de fer français"
NETWORK_SHORT="SNCF|SNCF TGV|TER Auvergne-Rhône-Alpes|TER Bourgogne|TER Bourgogne-Franche-Comté|TER Bretagne|TER Centre - Val de Loire|TER Champagne-Ardenne|TER Franche-Comté|TER Grand Est|TER Hauts-de-France|TER Midi-Pyrénées|TER Normandie|TER Nouvelle-Aquitaine|TER Occitanie|TER Pays de la Loire|TER Provence-Alpes-Côte d'Azur|TGV|TGV Europe|TGV InOui|liO TER Occitanie"

ANALYSIS_PAGE="France/Voies_ferrées/PTNA/Analyse"
ANALYSIS_TALK="Talk:France/Voies_ferrées/PTNA/Analyse"
WIKI_ROUTES_PAGE="France/Voies_ferrées/PTNA"

ANALYSIS_OPTIONS="--language=fr --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --positive-notes --max-error=10 --check-access --check-dates --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-route-ref --multiple-ref-type-entries=analyze --coloured-sketchline"

# --check-bus-stop
# --check-motorway-link
# --check-platform
# --check-roundabouts
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="France (terres)"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=[out%3Ajson][timeout%3A25]%3B(relation[wikidata='Q212429'][type='boundary']%3B)%3Bout+body%3B%3E%3Bout+skel+qt%3B{{data%3Aoverpass%2Cserver%3D%2F%2Foverpass.openstreetmap.fr%2Fapi%2F}}"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Société nationale des chemins de fer français (SNCF)"
PTNA_WWW_NETWORK_LINK="https://www.groupe-sncf.com/fr"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="Lignes SNCF"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
