\# TryHackMe: The Lay of the Land



\## Overview



Completed the TryHackMe room \*\*"The Lay of the Land"\*\*, which focuses on post-compromise enumeration and reconnaissance within a Windows enterprise environment.



The lab simulated an attacker who already gained access to a machine and needed to gather information about the internal network, users, systems, and security controls.



\## Objectives



\- Understand Windows host enumeration techniques

\- Identify system and network information

\- Learn how attackers perform internal reconnaissance

\- Discover Active Directory-related information

\- Identify security solutions and defensive controls



\## Skills Practiced



\- Windows enumeration

\- Active Directory reconnaissance

\- User and group discovery

\- Network information gathering

\- Host information analysis

\- Command-line investigation



\## Tools and Commands Used



\- Windows Command Prompt

\- PowerShell

\- whoami

\- hostname

\- systeminfo

\- ipconfig

\- netstat

\- arp

\- Windows security configuration checks



\## Key Findings / Learning Outcomes



During this lab, I learned how attackers collect information after gaining access to a Windows machine.



Important enumeration steps include:



\- Identifying the current user and privileges

\- Discovering system information

\- Gathering network configuration details

\- Understanding domain and Active Directory environments

\- Identifying potential security products installed on a system



\## Cybersecurity Relevance



Understanding attacker reconnaissance techniques helps Security Operations Center (SOC) analysts detect suspicious behaviour, investigate compromised endpoints, and improve incident response processes.



This knowledge is useful for:



\- SOC Analyst roles

\- Junior Cybersecurity Analyst positions

\- Incident Response

\- Threat Hunting

\- Penetration Testing fundamentals



\## Commands Practiced



```powershell

whoami

hostname

systeminfo

ipconfig /all

netstat -ano

arp -a

