# Deployarr v4.6.1 (and older) to v5.0 Migration 

## Deployarr v5 Has Many New Features

The following new features required a rewrite of majority of Deployarr code. Backward compatibility could not be maintained. 

<ul>
<li>NEW: Deployarr logo and icon.</li>
<li>NEW: Local mode for installing apps for local access only (no reverse proxy). This should now remove the Traefik requirement and allow multi-server setups.</li>
<li>NEW: Traefik Exposure Modes. Simple - all apps behind Traefik accessible internally and externally. Advanced - control over exposing apps internally, externally, or both. </li>
<li>NEW: By default Traefik will use file providers to expose apps via reverse proxy. Previously this was done using Docker labels. Some apps (e.g. Traefik, OAuth, and Authelia), will continue to use labels. </li>
</ul>

## Migrating form v4.6.1 to v5.0

Here are the recommended migration steps:

<ol>
<li>Stop all running containers or down the entire stack. Keep the stack down (do not restart it).</li>
<li>Run a cold backup from Deployarr Tools menu.</li>
<li>Exit Deployarr v4.6.1</li>
<li>If you have another layer of backup (e.g. Proxmox VM/LXC backup), run it too.</li>
<li>Delete all Deployarr Status files starting 03_, 04_, 05_, and 06_ in /opt/deployarr/status folder.</li>
<li>In the Docker folder, delete the compose folder and the master Docker compose file.</li>
<li>Restart Deployarr v4.6.1 and go through all the steps in sequence. Your appdata should be automatically picked up.</li>
<li>Choose to overwrite when reinstalling Traefik.</li>
</ol>

Here is a video walk through with some additional explanation: https://youtu.be/_9C7bDPveMg