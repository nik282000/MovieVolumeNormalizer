#!/bin/bash

FILENAME=$1
SHORTNAME=${FILENAME%'.'*}
ffmpeg -i "${FILENAME}" -filter:a "dynaudnorm=p=0.9:s=5" "${SHORTNAME}_normalized.mp3"
ffmpeg -i "${FILENAME}" -i "${SHORTNAME}_normalized.mp3" -map 0 -map 1 -c copy -metadata:s:a:1 title="Normalized Volume" "${SHORTNAME}_normalized.mkv"
rm "${SHORTNAME}_normalized.mp3"
