#!/bin/bash

## This file will create the RTMP/Encoding stack and web the web player in one shot

## Setup RTMP/Encoding stack
docker-compose up -d --force-recreate

## Download the web player
git clone https://longshot902@bitbucket.org/longshot902/netwar-webplayer.git ./stream/.