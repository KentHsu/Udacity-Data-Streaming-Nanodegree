#!/bin/bash
kill -9 `ps aux | grep stedi-application | grep -v grep | awk '{print $2}'`