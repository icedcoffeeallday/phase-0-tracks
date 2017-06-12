1. What are some of the key design philosophies of the Linux operating system?
- Speed, efficiency, and standardization
- UNIX-compatible
- Multi-user system that can complete multiple processes at the same time
- Portable, works on different hardware
- Open-source
- Uses a shell to transmit user commands to the core kernel for execution

2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
A virtual private server is a cloud-hosted server that can run almost any software; it's essentially a computer within a computer. Its equivalent in the physical world is a dedicated physical server, aka that big whirring tower of computer power locked in a closet next to the IT office. VPSes have the advantage of being incredibly quick to stand up and configure, since they don't require building out the hardware, installing the operating system, working out hardware bugs, etc. However, VPSes are often on shared machines in server farms, which means that traffic to the other servers on the same machine as your VPS can slow down your performance. Also, server farms have a potentially ghastly environmental impact, especially those in countries still largely powered by coal: https://www.theatlantic.com/technology/archive/2015/12/there-are-no-clean-clouds/420744/

3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
The root user in Linux is like a system administrator on steroids — it has access to *all* commands available, including things like seeing all data and performing hard deletion. If you, as the root user, were to run a program that been compromised by malware or other nefarious technology, you'd run the risk of giving your omnipotent root user power to a bad actor. While that would be no fun on your home computer, imagine what would happen if you accidentally did such a thing on a major bank's server (or one belonging to the CIA! Eep!)