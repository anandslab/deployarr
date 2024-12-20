Deployarr automates Homelab setup using Docker and Docker Compose. Below you will find more information its features and what it can/cannot do.

![Deployarr 5](images/v5/Deployarr%20App%20Logos%20100.png)

# What Apps are Supported by Deployarr?
Deployarr can automatically setup Socket Proxy, Traefik (fetch LE SSL certificates), Authelia, Portainer, Plex, Jellyfin, Starr Apps, Gluetun, Dozzle, Uptime-Kuma, Homepage, CrowdSec, and other apps. 

[Full List of Apps](docs/APPS.md)

## Supported Apps - 111 (and increasing)
![Apps Supported by Deployarr](images/v5/Deployarr%20App%20Logos%20100%20Supported%20Apps.png)

As Deployarr simplifies setup of several homelab apps, and not just Traefik, it was recently renamed from Auto-Traefik to Deployarr. You may still find references to Auto-Traefik until the rebrand is complete.

# Features
<ul>
<li>110+ Total Apps</li>
<li>Docker Environment Setup (FREE) - as in my guides</li>
<li>System Checks (FREE)</li>
<li>Domain Checks to prepare for Traefik (FREE)</li>
<li>Full control over all apps and files</li>
<li>Descriptive error messages for troubleshooting</li>
<li>Socket-Proxy to protect Docker Socket from compromised apps</li>
<li>Deployarr Dashboard - Auto-populating Homelab Dashboard</li>
<li>Bash Aliases for Linux, Docker, and Docker Compose</li>
<li>Local-only Setup without reverse proxy or port forwarding</li>
<li>Traefik Reverse Proxy App Exposure Modes: Internal Only, External Only, or Both</li>
<li>Multi-server Setup</li>
<li>Domain passthrough for multi-domain multi-Traefik setups</li>
<li>Google OAuth and Authelia for Authentication layer</li>
<li>CrowdSec and various bouncers for Security</li>
<li>Stack Manager: Update Apps, Enable Apps, Disable Apps, Delete Apps, Up/Down Stack, Recreate/Start/Stop containers, etc.</li>
<li>Backups, Restore, and Migration of whole setup</li>
<li>Expert Mode for advanced users</li>
<li>PLANNED: Several more apps including Authentik, Cloudflared, etc.</li>
</ul>

# Downloading and Running Deployarr
```
wget https://raw.githubusercontent.com/anandslab/deployarr/main/deployarr_v5.3.1.app
```
```
chmod +x deployarr_v5.3.1.app
```
```
./deployarr_v5.3.1.app
```

Use the <strong>-arm.app</strong> version of the file for Raspberry Pi. 

## Migrate from v4 to v5

[How to Migrate from v4.6.1 to v5?](docs/v4-to-v5-migration.md)

## Deployarr Stats - Jan to Dec 2024
![Jan to Dec, 2024](images/v5/deployarr%20stats%20dec%202024.png)

# References
More information on Deployarr and how to use it:

<strong>Official Website:</strong> https://www.smarthomebeginner.com/deployarr/

<strong>Video Guides:</strong>
<ul>
<li>20-min Intro: https://www.smarthomebeginner.com/go/deployarr-v5-intro/</li>
<li>Detailed Guide: https://www.smarthomebeginner.com/go/deployarr-v5-detailed-guide/</li>
</ul>

# Support
Please do not open issues on GitHub. There is a dedicated Auto-Traefik/Deployarr support channel on our [Discord server](https://www.smarthomebeginner.com/discord/) for Supporters.

# Cost / Licenses Types

Any one can download the use the <u>free</u> features in Deployarr without registration. 

Optionally, if you decide to sponsor my work, then there are 3 different options; Basic, Plus, and Pro, which will open up additional features. In addition, all [**annual** memberships](https://www.smarthomebeginner.com/membership-account/join-the-geek-army/) on my website include Deployarr access.

More Details: [Detailed Version Comparison](https://www.smarthomebeginner.com/deployarr/#Cost)

# FAQ
### What is the purpose of Deployarr?
The reason I created Deployarr was to enable people to automatically replicate the setup from my guides (and my own setup follows this). It is not a blackbox solution that one has no control over. My vision is for people to use it to setup their homelab for quick setup, testing, and customization. And if things break, learn from it, and quickly re-setup everything. Although Deployarr has some management tools **it is not intended to be a homelab manager**. 

### What OSes are supported?
Deployarr is primarily developed and tested on Ubuntu. But it should work on other Debian environments with little to no tweaking. 

### What hardware are supported?
At this point, Deployarr only works on Linux in Barebones, VM, and LXC environments. I do plan to include Synology devices in future. I am just waiting for Synology to update their Docker Package, which is several years old. 

### Why not Free?
Deployarr is meant to be a perk for followers and supporters of SmartHomeBeginner.com. But keep in mind that everything that the script does can be learned using the guides on SmartHomeBeginner.com or my [Docker-Traefik GitHub Repo](https://github.com/anandslab/docker-traefik).

Parts of the script are free to use without registration (see License Types).

Any support received via the purchase of the script goes towards publishing more videos guides on my [Youtube Channel](https://www.youtube.com/@anandslab). At this point, I spend 15x more on editing costs compared to Youtube Ad income. This also does not include 1000s of hours spent on writing guides, making videos, maintaining the community, and developing the script.

In addition, Deployarr also allows me to [contribute to the open-source projects](https://opencollective.com/deployarr) we all love.

### Why not Open-Source?
Paid supporters receive full access to the script's functionalities. Implementing this requires license checks with some sensitive information. Unfortunately, this requires compiling the source. 

### What are the limitations of Deployarr?

With a bit of knowledge, the basic framework created by Deployarr can be adapted to any situation. With that said, here are some limitations and known issues. 

<ul>
<li>DNS Challenge Provider: Cloudflare (only supported provider at this point). You may have you domain registered with any registrar, but you will have to use Cloudflare for DNS (its free).</li>
<li>Port Forwarding is required (80/443).</li>
<li>Some apps (Guacamole, Speedtest-Tracker) that depend on databases may fail upon reinstallation from scratch. This will be fixed at some point. Clean installation should work.</li>
</ul>

# Screenshots
#### Splash Screen
![Splash Screen](images/v5/01%20Deployarr%20v5%20Splash%20Screen.png)
#### Main Menu
![Main Menu](images/v5/02%20Deployarr%20v5%20Main%20Menu.png)
#### Prerequisites
![Prerequisites](images/v5/03%20Deployarr%20v5%20Prerequisites.png)
#### Local Setup
![Local Setup](images/v5/02a%20local%20only%20setup.png)
#### Hybrid Setup
![Hybrid Setup](images/v5/02b%20hybrid%20setup.png)
#### System Checks
![System Checks](images/v5/02a%20system%20checks%20output.png)
#### System Prep Menu
![System Prep Menu](images/v5/04%20Deployarr%20v5%20System%20Preparation.png)
#### Rclone Remote Mounts
![Rclone Remote Mounts](images/v5/05%20Deployarr%20v5%20Rclone%20Options.png)
#### Setting Folders
![Setting Folders](images/v5/06%20Deployarr%20v5%20Set%20Folders.png)
#### Docker Menu
![Docker Menu](images/v5/07%20Deployarr%20v5%20Docker%20Options.png)
#### Reverse Proxy Menu
![Reverse Proxy Menu](images/v5/08%20Deployarr%20v5%20Reverse%20Proxy%20Options.png)
#### Descriptive Error Messages
![Descriptive Error Messages](images/v5/08a%20Traefik%20Error.png)
#### Security Menu
![Security Menu](images/v5/09%20Deployarr%20v5%20Security%20Options.png)
#### Manage Authentication
![Manage Authentication](images/v5/10%20Deployarr%20v5%20Manage%20Authentication.png)
#### Apps List
![Apps List](images/v5/11%20Deployarr%20v5%20Apps%20Menu.png)
#### App Install
![App Install](images/v5/10%20Deployarr%204%20-%20App%20Install.png)
#### App Uninstall
![App Uninstall](images/v5/11%20Deployarr%204%20-%20App%20Uninstall.png)
#### Deployarr Dashboard
![Deployarr Dashboard](images/v5/11a%20Deployarr%20v5%20Deployarr%20Dashboard.png)
#### Tools Menu
![Tools Menu](images/v5/12%20Deployarr%20v5%20Tools%20Menu.png)
#### Stack Manager
![Stack Manager](images/v5/13%20Deployarr%20v5%20Stack%20Manager.png)
#### Containers Status
![Containers Status](images/v5/14%20Deployarr%204%20-%20Containers%20Status.png)
#### Services Status
![Services Status](images/v5/15%20Deployarr%204%20-%20Services%20Status.png)
#### Backups Menu
![Backups Menu](images/v5/14%20Deployarr%20v5%20Backups%20Menu.png)
#### Restore Backups
![Restore Backups](images/v5/17%20Deployarr%204%20-%20Restore%20Backups.png)
#### Deployarr Settings
![Deployarr Settings](images/v5/15%20Deployarr%20v5%20Settings.png)
#### License Types
![License Types](images/v5/16%20Deployarr%20v5%20License%20Types.png)
#### Setup Options
![Setup Options](images/v5/18%20setup%20options.png)
#### Getting Support
![Getting Support](images/v4/21%20Deployarr%204%20-%20Getting%20Support.png)
