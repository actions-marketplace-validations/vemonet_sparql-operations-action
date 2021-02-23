#!/bin/sh

COMMAND="java -jar /app/d2s-sparql-operations.jar -e ${INPUT_ENDPOINT}"

if [ ! -z "${INPUT_FILE}" ]; then
    COMMAND="${COMMAND} --input ${INPUT_FILE}"
fi
if [ ! -z "${INPUT_QUERY}" ]; then
    COMMAND="${COMMAND} --query '${INPUT_QUERY}'"
fi

if [ ! -z "${INPUT_USER}" ]; then
    COMMAND="${COMMAND} --username ${INPUT_USER}"
fi
if [ ! -z "${INPUT_PASSWORD}" ]; then
    COMMAND="${COMMAND} --password ${INPUT_PASSWORD}"
fi

if [ ! -z "${INPUT_OPERATION}" ]; then
    COMMAND="${COMMAND} --operation ${INPUT_OPERATION}"
fi
if [ ! -z "${INPUT_GRAPH}" ]; then
    COMMAND="${COMMAND} --graph ${INPUT_GRAPH}"
fi

if [ ! -z "${INPUT_INPUTVAR}" ]; then
    COMMAND="${COMMAND} --var-input ${INPUT_INPUTVAR}"
fi
if [ ! -z "${INPUT_OUTPUTVAR}" ]; then
    COMMAND="${COMMAND} --var-output ${INPUT_OUTPUTVAR}"
fi
if [ ! -z "${INPUT_SERVICEVAR}" ]; then
    COMMAND="${COMMAND} --var-service ${INPUT_SERVICEVAR}"
fi

eval "${COMMAND}"