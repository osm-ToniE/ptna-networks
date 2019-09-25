#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BW-DING"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name~'(Ulm|Landkreis Sigmaringen|Landkreis Neu-Ulm|Landkreis Biberach|Alb-Donau-Kreis|Landkreis Göppingen|Landkreis Heidenheim|Landkreis Ravensburg|Landkreis Reutlingen)'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Donau-Iller-Nahverkehrsverbund"
NETWORK_SHORT="DING"

ANALYSIS_PAGE="DING/Transportation/DING-Analyse"
ANALYSIS_TALK="Talk:DING/Transportation/DING-Analyse"
WIKI_ROUTES_PAGE="DING/Transportation/DING-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

# http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Badmin_level%3D6%5D%5Bname~%27(Ulm%7CLandkreis%20Sigmaringen%7CLandkreis%20Neu-Ulm%7CLandkreis%20Biberach%7CAlb-Donau-Kreis%7CLandkreis%20Göppingen%7CLandkreis%20Heidenheim%7CLandkreis%20Ravensburg%7CLandkreis%20Reutlingen)%27%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B

