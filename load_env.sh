#!/bin/bash
env="./.env"
if [ -f "${env}" ]
then
    export $(cat "${env}" | xargs)
else
    echo "${env}: file not found"
fi
