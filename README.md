# What is Deployarr?
Automatically setup Socket Proxy, Traefik (fetch LE SSL certificates), Authelia, Portainer, Plex, Jellyfin, Starr Apps, Gluetun, Dozzle, Uptime-Kuma, Homepage, and other apps (40 in total!!!). 

![Deployarr 4](screenshots/v4/Deployarr%204%20-%2040%20plus%20Docker%20Apps.png)
![Apps Supported by Deployarr](screenshots/v4/Deployarr%204%20-%2040%20plus%20Docker%20Apps.png)

As Deployarr simplifies setup of several homelab apps, and not just Traefik, it was recently renamed from Auto-Traefik to Deployarr. You may still find references to Auto-Traefik until the rebrand is complete.

# Downloading and Running Deployarr
```
wget https://raw.githubusercontent.com/anandslab/deployarr/main/deployarr_v4.0.1.app
```
```
chmod +x deployarr_v4.0.1.app
```
```
./deployarr_v4.0.1.app
```

Use the <strong>-arm.app</strong> version of the file for Raspberry Pi. 

# References
More information on Deployarr and how to use it:

<strong>Official Website:</strong> https://www.smarthomebeginner.com/deployarr/

<strong>Guides:</strong>
<ul>
<li>Text Guide: https://www.smarthomebeginner.com/course/how-to-use-auto-traefik/</li>
<li>Video Guide: https://www.youtube.com/playlist?list=PL1Hno7tIbSWViTyCXl9xNdXXU-1bVxIFD</li>
</ul>

# Support
Please do not open issues on GitHub. There is a dedicated Auto-Traefik/Deployarr support channel on our [Discord server](https://www.smarthomebeginner.com/discord/) for Supporters.

# Licenses Types
### Free License
<ul>
<li>No registration required. Anyone can download and run the script as described above. Free to explore all the available options.</li>
<li>Perform system, port, and Docker checks to ensure your system is ready for Traefik. Get your system ready to follow <a href="https://www.smarthomebeginner.com/traefik-v3-docker-compose-guide-2024/" target="_blank">Traefik v3 Setup</a> guide.</li>
</ul>

### Basic License (Free)
<ul>
<li>Register for a free account on SmartHomebeginner.com and activate the ability to automatically setup Docker Environment with proper files, folders, and permissions, as described in the <a href="https://www.smarthomebeginner.com/docker-media-server-2024/" target="_blank">Ultimate Docker Media Server</a> guide.</li>
<li>Ability to view Docker disk usage and clean up.</li>
</ul>

### Plus License
<ul>
<li>Ensure prerequisites and setup the basic Docker-Traefik stack.</li>
<li>Add authentication and additional apps manually.</li>
<li>Expert Mode to override checks for advanced setups.</li>
<li>Perfect for anyone that wants to setup the basic Docker environment with Traefik reverse proxy.</li>
</ul>

### Pro License
<ul>
<li>Everything above, plus automated setup of 40 total apps, including Authelia, Google OAuth, Starr Apps, and more.</li>
<li>Backup and Migration features.</li>
<li>Stack Manager to manage the environment.</li>
</ul>

# FAQ
### What is the purpoes of Deployarr?
The reason I created Deployarr was to enable people to automatically replicate the setup from my guides (and my own setup follows this). It is not a blackbox solution that one has no control over. My vision is for people to use it to setup their homelab for quick setup, testing, and customization. And if things break, learn from it, and quickly re-setup everything. Although Deployarr has some management tools it is not intended to be a homelab manager. 

### What OSes are supported?
Deployarr is primarily developed and tested on Ubuntu. But it should work on other Debian environments. 

### What hardware are supported?
At this point, Deployarr only works on Linux in Barebones, VM, and LXC environments. I do plan to include Synology devices in future. I am just waiting for Synology to update their Docker Package, which is several years old. 

### Why not Free?
Deployarr is meant to be a perk for followers and supporters of SmartHomeBeginner.com. But keep in mind that everything that the script does can be learned using the guides on SmartHomeBeginner.com.

Parts of the script are free to use without registration (see License Types).

Any support received via the purchase of the script goes towards publishing more videos guides on my [Youtube Channel](https://www.youtube.com/@anandslab). At this point, I spend 15x more on editing costs compared to Youtube Ad income. This also does not include 1000s of hours spent on writing guides, making videos, maintaining the community, and developing the script.

### Why not Open-Source?
Paid supporters receive full access to the script's functionalities. Implementing this requires license checks with some sensitive information. Unfortunately, this requires compiling the source. 

# Screenshots
#### Splash Screen
![Splash Screen](screenshots/v4/01%20Deployarr%204%20-%20Spash.png)
#### Main Menu
![Main Menu](screenshots/v4/02%20Deployarr%204%20-%20Main%20Menu.png)
#### Disclaimers
![Disclaimers](screenshots/v4/03%20Deployarr%204%20-%20Disclaimers.png)
#### System Prep Menu
![System Prep Menu](screenshots/v4/04%20Deployarr%204%20-%20System%20Prep%20Menu.png)
#### Setting Folders
![Setting Folders](screenshots/v4/05%20Deployarr%204%20-%20Set%20Folders.png)
#### Docker Menu
![Docker Menu](screenshots/v4/06%20Deployarr%204%20-%20Docker%20Sub%20Menu.png)
#### Reverse Proxy Menu
![Reverse Proxy Menu](screenshots/v4/07%20Deployarr%204%20-%20Reverse%20Proxy%20Sub%20Menu.png)
#### Security Menu
![Security Menu](screenshots/v4/08%20Deployarr%204%20-%20Security%20Sub%20Menu.png)
#### Apps List
![Apps List](screenshots/v4/09%20Deployarr%204%20-%20Apps%20Sub%20Menu.png)
#### App Install
![App Install](screenshots/v4/10%20Deployarr%204%20-%20App%20Install.png)
#### App Uninstall
![App Uninstall](screenshots/v4/11%20Deployarr%204%20-%20App%20Uninstall.png)
#### Tools Menu
![Tools Menu](screenshots/v4/12%20Deployarr%204%20-%20Tools%20Sub%20Menu.png)
#### Stack Manager
![Stack Manager](screenshots/v4/13%20Deployarr%204%20-%20Stack%20Manager.png)
#### Containers Status
![Containers Status](screenshots/v4/14%20Deployarr%204%20-%20Containers%20Status.png)
#### Services Status
![Services Status](screenshots/v4/15%20Deployarr%204%20-%20Services%20Status.png)
#### Backups Menu
![Backups Menu](screenshots/v4/16%20Deployarr%204%20-%20Backups%20Sub%20Menu.png)
#### Restore Backups
![Restore Backups](screenshots/v4/17%20Deployarr%204%20-%20Restore%20Backups.png)
#### Deployarr Settings
![Deployarr Settings](screenshots/v4/18%20Deployarr%204%20-%20Deployarr%20Settings%20Menu.png)
#### About Menu
![About Menu](screenshots/v4/19%20Deployarr%204%20-%20About%20Sub%20Menu.png)
#### Getting Support
![Getting Support](screenshots/v4/21%20Deployarr%204%20-%20Getting%20Support.png)
