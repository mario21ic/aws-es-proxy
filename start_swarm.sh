#!/bin/bash
# Usage: ./start_swarm.sh <endpoint>
# Example: ./start_swarm.sh https://vpc-myinstance1234.us-west-2.es.amazonaws.com

ENDPOINT=$1 docker stack deploy --compose-file docker-stack.yml aws-es-proxy
