#!/bin/bash
if [ -n "$UNION" ]; then
  unionfs-fuse -o cow /gmod-volume=RW:/gmod-base=RO /gmod-union
  while true; do
    /gmod-union/srcds_run -game garrysmod +maxplayers ${MAXPLAYERS} +host_workshop_collection ${WORKSHOP_COLLECTION} -authkey ${AUTH_KEY} +gamemode ${GAMEMODE} "${ARGS}" +map ${MAP} -autoupdate
  done
else
  while true; do
    /gmod-base/srcds_run -game garrysmod +maxplayers ${MAXPLAYERS} +host_workshop_collection ${WORKSHOP_COLLECTION} -authkey ${AUTH_KEY} +gamemode ${GAMEMODE} "${ARGS}" +map ${MAP} -autoupdate
  done
fi

