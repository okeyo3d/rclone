#!/bin/bash
rclone move okeyo3d:/ archive:okeyo3d@gmail.com/My\ Drive/ --progress --drive-trashed-only --drive-acknowledge-abuse --min-age 401d
