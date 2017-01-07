MD Soft RAID monitoring template for Zabbix
===========================================

Using _sysfs_ for monitoring of Linux Soft RAID aka MD

Tested on Zabbix Version 3.0

See at [share.zabbix.com](https://share.zabbix.com/operating-systems/linux/template-md-raid)

FEATURES
--------
* LLD for auto detecting RAID
* Monitoring of total number of disks, number of degraded disks, sync_status
* Graph for degraded disks
* Triggers for degrading and raid recovering


REQUIREMENTS
------------
* Zabbix server version 3.0
* SYSFS at agents's server, __/sys/block/md*__ available

INSTALLATION
------------
* Agent
  * Copy __userparameter_md.conf__ to __/etc/zabbix/zabbix_agentd.d/userparameter_md.conf__
  * Restart zabbix_agent
* Server
  * Import template __template_md.xml__ file

AUTHOR
------
Roman Kudlay roman@kudlay.pro

LICENSE
-------
GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007

See [LICENSE](LICENSE)
