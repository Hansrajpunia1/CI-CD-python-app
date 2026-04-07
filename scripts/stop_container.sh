#!/bin/bash
/usr/bin/docker stop flask-app || true
/usr/bin/docker rm flask-app || true
