MD Soft RAID monitoring
=======================

Using _sysfs_ for monitoring of Linux Soft RAID aka MD

FEATURES
--------

* LLD for auto detecting RAID
* Monitoring of total number of disks, number of degraded disks, sync_status
* Graph for degraded disks
* Triggers for degrading and raid recovering

INSTALLATION
------------

1. Agent
  1. Copy __userparameter_md.conf__ to __/etc/zabbix/zabbix_agentd.d/userparameter_md.conf__ 
  1. Copy __zabbix_md_discover.sh__ to __/usr/bin/zabbix_md_discover.sh__
  1. Restart zabbix_agent
1. Server
  1. Import template __template_md.xml__

AUTHOR
------

Roman Kudlay roman@kudlay.pro

LICENSE
-------

GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007

@see __LICENSE__