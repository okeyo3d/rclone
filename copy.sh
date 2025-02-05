#!/bin/bash
rclone sync okeyo3d:/ archive:okeyo3d@gmail.com/My\ Drive/ --progress --drive-acknowledge-abuse --min-age 401d
