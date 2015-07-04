# hostname convention

* owner is specified explicitly when other than me
* location is specified only when other than home?
* unless '-lb-' is specified in the hostname, the server is a production machine

sample string format:

<owner>-location-<lb (if lb only)>-<3 letter acronym>[0-9]{2,3}>
<owner>-location-<3 letter acronym>[0-9]{2,3}>

available locations:
  h: home
  c: machine in cloud
  v: vm or vps

# list of acronyms (by type of servers)

* web servers
  * web web server
  * gs git server
  * ws wiki server
  * db db server
  * px proxy server
  * rpx reverse proxy server

* access control
  * lda ldap server

* dns, dhcp and provisionning
  * dn dns server
  * dh dhcp server
  * ps provisionning server

* networking equipmement
  * lb loadbalancer
  * fw firewall
  * gw gateway
  * ir "inner or inside" router
  * sw switch

* workstations
  * de desktop environnement
  * des desktop server
  * ds desktop server (desktop and server at the same time)
  * wde windows desktop
  * ltp laptop

* multipurpose (say a docker host running multiple containers)
  * ss system server

* storage
  * bk backup server
  * ftp ftp server
  * is install server
  * nas file server
  * san san server

* mail
  * mx mail exchange
  * mr mail relay

* logging and monitoring
  * ms monitoring server
  * log syslog server

* misc
  * wss window special server

* chat
  * cs chat server

* ephemeral
  * vs vagant server
