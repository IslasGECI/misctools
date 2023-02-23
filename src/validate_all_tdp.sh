#!/usr/bin/env bash

ERROR=0
for DATAPACKAGE in */
  do
    echo -e "\nData package: ${DATAPACKAGE}"
    SKIP_CHECKS=$(jq --raw-output .skip_checks "${DATAPACKAGE}/datapackage.json")
    echo "Skip checks: ${SKIP_CHECKS}"
    if [ "${DATAPACKAGE}" != "src/" ]
      then
        if [ "${SKIP_CHECKS}" = "null" ]
          then
            geci-validate "${DATAPACKAGE}"
          else
            geci-validate "${DATAPACKAGE}" --skip-checks "${SKIP_CHECKS}"
        fi
        ERROR=$((ERROR+$?))
        if [ "${ERROR}" -gt "0" ]
          then
            echo -e "\nERROR: ${DATAPACKAGE}: ${ERROR}"
            exit ${ERROR}
        fi
    fi
  done

