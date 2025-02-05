#!/bin/bash
rclone sync gdrive:/ archive:javanson.okeyo@oneacrefund.org/My\ Drive/ --progress --drive-acknowledge-abuse --min-age 400d
