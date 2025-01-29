#!/bin/bash

codio-tools sync "/home/codio/workspace/file.sh" "/home/ubuntu/file.sh"
codio-tools sync "/home/codio/workspace/folder" "/home/ubuntu/folder"
codio-tools sync "/home/codio/workspace/simple" "/home/ubuntu/simple"
codio-tools port-forwarding 3355 3344 "/bin/bash /home/codio/workspace/.guides/vm/start.sh"
