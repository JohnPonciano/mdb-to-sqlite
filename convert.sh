#!/bin/bash
docker run -i mdb2sqlite bash -c 'cat > input && python convert.py input | sqlite3 output && cat output' < $1 > "$1.sqlite"
