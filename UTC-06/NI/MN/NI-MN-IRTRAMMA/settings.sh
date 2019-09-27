#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="NI-MN-IRTRAMMA"

PTNA_TIMEZONE="America/Managua"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[wikidata=Q3274][type=boundary];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Instituto Regulador del Transporte del Municipio de Managua"
NETWORK_SHORT="IRTRAMMA"

#ANALYSIS_PAGE="ES:Nicaragua/Transporte_p%C3%BAblico/Managua/Análisis"
#ANALYSIS_TALK="ES_talk:Nicaragua/Transporte_p%C3%BAblico/Managua/Análisis"
#WIKI_ROUTES_PAGE="ES:Nicaragua/Transporte_p%C3%BAblico/Managua/Análisis/IRTRAMMA_Líneas"

ANALYSIS_OPTIONS="--language=es --check-access --check-bus-stop --check-roundabouts --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-platform 
# --expect-network-short 
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=

