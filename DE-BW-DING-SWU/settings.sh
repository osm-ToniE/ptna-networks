#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BW-DING-SWU"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=(rel(poly:'
48.4539045 9.9891665 48.4226263 9.8661771 48.3578424 9.8687857 48.3193944 9.9358786 48.3347822 10.1169242 48.4308096 10.0760772')[route~'(bus|tram)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(r.routes););out;"
NETWORK_LONG="Donau-Iller-Nahverkehrsverbund"
NETWORK_SHORT="DING"
OPERATOR_REGEX="SWU"

ANALYSIS_PAGE="Ulm_Neu-Ulm/Transportation/SWU-Analyse"
WIKI_ROUTES_PAGE="Ulm_Neu-Ulm/Transportation/SWU-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline"

# --max-error=
# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=

#OVERPASS_TURBO="https://overpass-turbo.eu/map.html?Q=node(around%3A30%2C48.4539045%2C9.9891665%2C48.4226263%2C9.8661771%2C48.3578424%2C9.8687857%2C48.3193944%2C9.9358786%2C48.3347822%2C10.1169242%2C48.4308096%2C10.0760772)%3B%0Aout%3B"

