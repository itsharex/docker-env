#!/usr/bin/env bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  rm -rf ./logs/* && \
  docker-compose build mysql57
}

Reset