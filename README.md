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
* Agent (host with RAID)
  * Copy __userparameter_md.conf__ to __/etc/zabbix/zabbix_agentd.d/userparameter_md.conf__
    * `curl -Ls https://git.io/fN9H5 | sudo tee /etc/zabbix/zabbix_agentd.d/userparameter_md.conf`
  * Restart zabbix_agent
    * UBUNTU/DEBIAN: `sudo service zabbix-agent restart`
* Server
  * Import template __template_md.xml__ file via web admin
    * Save the XML template file to a convenient location
    * Open the Zabbix console
    * Navigate to __Configuration__ > __Templates__
    * Click the __Import__ button
    * Select the downloaded __template_md.xml__ file
    * Click __Import__

ITEMS
-----

* **md.discover** - LLD data (MD RAIDs and disks)
* **md.degraded[*]** - number of degraded disks for specific RAID
* **md.sync_action[*]** - current sysnc status for specific RAID
* **md.raid_disks[*]** - number all disks for specific RAID

AUTHOR
------
Roman Kudlay roman@kudlay.pro

LICENSE
-------
GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007

See [LICENSE](LICENSE)
