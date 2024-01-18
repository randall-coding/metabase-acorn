#!/bin/bash
acorn build -t ghcr.io/randall-coding/acorn/metabase && \
acorn push ghcr.io/randall-coding/acorn/metabase && \
acorn run -n metabase ghcr.io/randall-coding/acorn/metabase
