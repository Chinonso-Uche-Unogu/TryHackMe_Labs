\# Cisco Router Network Configuration Lab



!\[Cisco Network Topology](Cisco\_Network\_Topology.png)



!\[Cisco Router Status](Cisco\_Router\_Status.png)



\## Overview



This project demonstrates the configuration and testing of a Cisco 1941 router using Cisco Packet Tracer. The objective was to establish communication between two separate LAN segments through router interface configuration and verify successful network connectivity.



\## Devices Used



\* Cisco 1941 Router

\* Cisco IOS 15.1

\* Cisco Switches

\* End Devices (PCs)



\## Network Configuration



\### Interface G0/0



\*\*IP Address:\*\*

192.168.1.1



\*\*Subnet Mask:\*\*

255.255.255.0



\*\*Status:\*\*

UP



\### Interface G0/1



\*\*IP Address:\*\*

192.168.2.1



\*\*Subnet Mask:\*\*

255.255.255.0



\*\*Status:\*\*

UP



\## Configuration and Verification



Commands used:



```bash

show ip interface brief

```



```bash

copy running-config startup-config

```



These commands were used to verify interface status and save the router configuration.



\## Connectivity Testing



After configuring the router and connected devices, network communication was tested successfully.



Tests completed:



\* PC-to-PC communication

\* PC-to-router gateway communication

\* Verification of active network interfaces

\* Successful packet transmission using Cisco Packet Tracer simulation



\## Skills Demonstrated



\* Cisco IOS configuration

\* IPv4 addressing

\* Router interface configuration

\* LAN connectivity

\* Network troubleshooting

\* Basic routing concepts

\* Network administration fundamentals for cybersecurity environments



