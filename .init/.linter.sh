#!/bin/bash
cd /home/kavia/workspace/code-generation/space-shooter-leaderboard-system-164154-163885/space_shooter_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

