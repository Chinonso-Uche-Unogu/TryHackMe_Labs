\# TryHackMe - Boogeyman 1 Incident Response Investigation



\## Overview



\*\*Platform:\*\* TryHackMe

\*\*Room:\*\* Boogeyman 1

\*\*Category:\*\* SOC / Incident Response / Digital Forensics

\*\*Difficulty:\*\* Medium



This investigation focused on analysing a simulated cyber attack involving phishing, endpoint compromise, malicious PowerShell activity, and data exfiltration.



The objective was to investigate the attack chain, identify Indicators of Compromise (IOCs), and understand the techniques used by the threat actor.



\---



\# Investigation Objectives



\- Analyse the initial attack vector

\- Investigate phishing-related artifacts

\- Identify malicious processes and commands

\- Analyse PowerShell activity

\- Investigate network communication

\- Extract Indicators of Compromise (IOCs)

\- Build an incident timeline



\---



\# Attack Timeline



\## 1. Initial Access



The attacker gained access through a phishing-based attack.



Investigation areas:



\- Email analysis

\- Malicious attachments/links

\- User interaction

\- Initial execution method



\---



\## 2. Execution



The investigation identified malicious command execution activity.



Tools and techniques analysed:



\- PowerShell commands

\- Windows event logs

\- Process execution

\- Command-line activity



\---



\## 3. Persistence and Discovery



The attacker performed activities to maintain access and gather information.



Investigated:



\- User activity

\- System information

\- Suspicious processes

\- File access



\---



\## 4. Data Collection and Exfiltration



Network activity was analysed to identify:



\- External communication

\- Attacker infrastructure

\- Exfiltration methods

\- Destination domains and ports



\---



\# Tools Used



| Tool | Purpose |

|------|---------|

| TryHackMe | Investigation environment |

| Windows Event Logs | Endpoint investigation |

| PowerShell Logs | Command analysis |

| Wireshark | Network traffic analysis |

| TShark | Packet analysis |

| MITRE ATT\&CK | Technique mapping |



\---



\# Indicators of Compromise (IOCs)



\## Domains





\---



\# MITRE ATT\&CK Mapping



| Technique | ID | Description |

|-----------|----|-------------|

| Phishing | T1566 | Initial Access |

| PowerShell | T1059.001 | Command and Scripting Interpreter |

| Data Exfiltration | T1041 | Exfiltration Over C2 Channel |



\---



\# Lessons Learned



This investigation improved practical skills in:



\- SOC alert investigation

\- Threat detection

\- Windows forensic analysis

\- PowerShell investigation

\- Network traffic analysis

\- Incident response workflow



\---



\# Conclusion



The Boogeyman 1 investigation provided hands-on experience analysing a complete attack lifecycle from initial phishing access to attacker communication and data exfiltration.



The investigation strengthened my ability to collect evidence, identify attacker behaviour, and document findings following a SOC analyst workflow.



\---



\*\*Completed:\*\* July 2026  

\*\*Author:\*\* Chinonso Uche Unogu  

\*\*GitHub Portfolio:\*\* https://github.com/Chinonso-Uche-Unogu

