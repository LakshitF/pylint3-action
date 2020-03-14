#!/usr/bin/env bash

echo "Running style checks on ${inputs.filename}"
pycodestyle ${inputs.filename}
echo " Style checking finished "
