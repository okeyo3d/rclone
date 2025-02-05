#!/bin/bash
rclone move gdrivezeus:/ archive:ZEUS/My\ Drive/ --progress --drive-trashed-only --drive-acknowledge-abuse --min-age 401d
