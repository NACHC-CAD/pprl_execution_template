#!/bin/bash
echo "--- Running EXACT MATCHES --------------------------------------------"
nohup python3 -u /home/ubuntu/linkage-agent-tools/dcctools/exact_matches.py | tee ./logs/exact_matches.log &
wait
echo "--- Running VALIDATE --------------------------------------------"
nohup python3 -u /home/ubuntu/linkage-agent-tools/validate.py | tee ./logs/validate.log &
wait
echo "--- Running DROP --------------------------------------------"
nohup python3 -u /home/ubuntu/linkage-agent-tools/drop.py | tee ./logs/drop.log &
wait
echo "--- Running PROJECTS --------------------------------------------"
nohup python3 -u /home/ubuntu/linkage-agent-tools/projects.py | tee ./logs/projects.log &
wait
echo "--- Running MATCH --------------------------------------------"
nohup python3 -u /home/ubuntu/linkage-agent-tools/match.py | tee ./logs/match.log &
wait
echo "--- Running LINK_IDS --------------------------------------------"
nohup python3 -u /home/ubuntu/linkage-agent-tools/link_ids.py | tee ./logs/link_id.log &
wait
echo "--- Running DATA_OWNER_IDS --------------------------------------------"
nohup python3 -u /home/ubuntu/linkage-agent-tools/data_owner_ids.py | tee ./logs/data_owner_ids.log &
wait
echo "--- Running FREQ --------------------------------------------"
nohup python3 -u /home/ubuntu/linkage-agent-tools/dcctools/freqs_of_matching_projs.py | tee ./logs/freq_of_matching_proj.log &
wait
echo "--- Running SHAPES --------------------------------------------"
nohup python3 -u /home/ubuntu/linkage-agent-tools/dcctools/matching_project_shapes.py | tee ./logs/matching_project_shapes.log &
wait
echo "--- Running PROJ_FREQ --------------------------------------------"
nohup python3 -u /home/ubuntu/linkage-agent-tools/dcctools/project_matching_freq.py | tee ./logs/project_matching_freq.log &
wait
echo ""
echo ""
echo "Done."
echo ""
echo ""