#!/bin/bash
# Usage: ./start_docker.sh <endpoint>
# Example: ./start_docker.sh https://vpc-myinstance1234.us-west-2.es.amazonaws.com

ENDPOINT=$1 docker-compose up
