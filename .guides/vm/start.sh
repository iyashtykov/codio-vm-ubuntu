#!/bin/bash

# Execute on VM start

codio-tools upload /home/codio/workspace/.guides/vm/vm_start.sh /home/ubuntu/.vm/vm_start.sh
codio-tools exec-async /bin/bash /home/ubuntu/.vm/vm_start.sh
