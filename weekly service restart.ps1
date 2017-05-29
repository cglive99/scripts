# Restart the ImageNow File System Agent 7.1 (Primary), ImageNow OSM Agent 7.1 (Primary) and ImageNow Message Queueing Agent 7.1 (Primary) services every week
# Created by Chris Griffin on 4/5/17 per Heat ticket 00845174
Stop-Service "ImageNow File System Agent 7.1 (Primary)"
Stop-Service "ImageNow OSM Agent 7.1 (Primary)"
Stop-Service "ImageNow Message Queueing Agent 7.1 (Primary)"
Start-Service "ImageNow File System Agent 7.1 (Primary)"
Start-Service "ImageNow OSM Agent 7.1 (Primary)"
Start-Service "ImageNow Message Queueing Agent 7.1 (Primary)"