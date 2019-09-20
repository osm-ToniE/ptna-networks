#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="BR-MG-BHTrans"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[wikidata=Q39109][type=boundary];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Empresa de Transporte e Trânsito de Belo Horizonte"
NETWORK_SHORT="BHTRANS|BR:MG:Belo Horizonte"

ANALYSIS_PAGE="Belo_Horizonte/Public_Transport/Analysis"
ANALYSIS_TALK="Talk:Belo_Horizonte/Public_Transport/Analysis"
WIKI_ROUTES_PAGE="Belo_Horizonte/Public_Transport/Analysis/BHTrans_Lines"

ANALYSIS_OPTIONS="--language=pt-BR --check-access --check-bus-stop --check-roundabouts --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-platform 
# --expect-network-short 
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=

