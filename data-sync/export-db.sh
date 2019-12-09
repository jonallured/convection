#!/bin/bash

start_datetime=$(date -u +"%D %T %Z")
echo "[data export] Starting at $start_datetime"

pg_dump --no-owner -Fc -d $DATABASE_URL -f archive.pgdump

aws s3 cp archive.pgdump s3://artsy-data/convection/archive.pgdump

end_datetime=$(date -u +"%D %T %Z")
echo "[data export] Ended at $end_datetime"
