#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_pipeline_status info
PYTHONPATH=src python -m gbt_pipeline_status check --payload '{}'
PYTHONPATH=src python -m gbt_pipeline_status run   --payload '{}'
