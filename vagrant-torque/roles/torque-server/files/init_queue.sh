#!/bin/sh
qmgr -c 'create queue batch'
qmgr -c 'set queue batch queue_type = Execution'
qmgr -c 'set queue batch resources_default.nodes = 1'
qmgr -c 'set queue batch enabled = True'
qmgr -c 'set queue batch started = True'
qmgr -c 'set server default_queue = batch'
qmgr -c 'set server scheduling = True'
qmgr -c 'set server acl_roots = root@*'
qmgr -c 'set queue batch resources_default.walltime = 168:00:00'
qmgr -c 'set server keep_completed = 86400'