# Deployarr v4.6.1 (and older) to v5.0 Migration 

## Deployarr v5 Has Manu New Features

The following new features required a rewrite of majority of Deployarr code. Backward compatibility could not be maintained. 

<ul>
<li>NEW: Deployarr logo and icon.</li>
<li>NEW: Local mode for installing apps for local access only (no reverse proxy). This should now remove the Traefik requirement and allow multi-server setups.</li>
<li>NEW: Traefik Exposure Modes. Simple - all apps behind Traefik accessible internally and externally. Advanced - control over exposing apps internally, externally, or both. </li>
<li>NEW: By default Traefik will use file providers to expose apps via reverse proxy. Previously this was done using Docker labels. Some apps (e.g. Traefik, OAuth, and Authelia), will continue to use labels. </li>
</ul>

## Known Issues

<ul>
<li>Apps requiring a database (e.g. Guacamole, Speedtest-Tracker, Nextcloud, etc.) will fail. Deployarr is not capable of reusing existing databases during re-installation. Possible Fixes: 1) Delete the associated MariaDB database and user using phpMyAdmin or Adminer. Then reinstall the app. New database and user will be created. 2) Reinstall the App and manually change database username and password in Docker Secrets folder to reflect the correct username and password.</li>
</ul>

## Migrating form v4.6.1 to v5.0

Here are the recommended migration steps:

<ol>
<li>Stop all running containers or down the entire stack.</li>
<li>Run a cold backup from Deployarr Tools menu.</li>
<li>Delete everything inside Docker Folder, <u>EXCEPT</u>, <b>.env</b>, <b>secrets</b> folder, and <b>appdata</b> folder.</li>
<li>Download Deployarr v5.</li>
<li>Reinstall install apps (check known issues above).</li>
<ol>