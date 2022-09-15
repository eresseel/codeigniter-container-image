#!/bin/sh
set -x

CI_VERSION=v4.2.6
WORKDIR="/app"

cd ${WORKDIR}

if [ -z "$(ls -A ${WORKDIR})" ]; then
    echo "Setting default environment"
    wget https://api.github.com/repos/codeigniter4/CodeIgniter4/zipball/${CI_VERSION}
    unzip -qq ${WORKDIR}/${CI_VERSION} -d ${WORKDIR}
    rm -rf ${WORKDIR}/${CI_VERSION}
    CI_FOLDER_NAME=$(ls)
    cp -Lr ./${CI_FOLDER_NAME}/* ${WORKDIR}
    rm -rf ${CI_FOLDER_NAME}
elif [ ! -f "${WORKDIR}/spark" ]; then
        echo "This folder does not contain a Code Igniter project"
        exit 1
fi

CI_UID=${UID:-1000}
CI_GUID=${GUID:-1000}
addgroup -g ${CI_GUID} -S ci
adduser -u ${CI_UID} -g ${CI_GUID} -S ci

chown -R ci.ci ${WORKDIR}

php spark serve --host 0.0.0.0