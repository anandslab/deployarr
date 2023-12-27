<h3>Releases</h3>

<h5>v2.3 - December 28, 2023</h5>
<ul>
<li>Simplified data entry forms.</li>
<li>Broke down and reassigned "Required Information" collection to their relevant section/steps instead of collecting all info at the beginning.</li>
<li>Added UI, instead of commandline for certain steps (e.g. Must Read Info, Authelia, etc.)
<li>Added Docker data size on disk and option to prune unused data/volumes/images.</li>
<li>Added option to uninstall/remove Auto-Traefik.</li>
<li>Added "Expert Mode" - will allow overriding certain steps (e.g. IP checks). Mode can be changed from Auto-Traefik Options.</li>
<li>Added Docker and Docker Compose version info to Docker menu.</li>
</ul>

<h5>v2.2.1 - December 6, 2023</h5>
<ul>
<li>Fix for the script not creating docker folders when they do not already exist.</li>
<li>Added comment on how to find Authelia verification email.</li>
</ul>

<h5>v2.2 - December 2, 2023</h5>
<ul>
<li>Potential fix for "Could not read certificate" error. Replaced openssl certificate check with acme.json file checks.</li>
<li>Removed unnecessary stoppage and restart of containers - only services being worked on will restart instead of the whole stack.</li>
<li>Improved the UI/UX for collecting required information and license check. </li>
</ul>

<h5>v2.1 - November 28, 2023</h5>
<ul>
<li>Several improvements and bug fixes. Potential fix for "Could not read certificate" error.</li>
<li>Added Dozzle, Homepage, and Uptime Kuma.</li>
<li>
</ul>

<h5>v2.0 - November 15, 2023</h5>
<ul>
<li>Free options for everyone - The system, docker, and port checks are available for anyone to use. No purchase necessary. This is great for anyone that wants to troubleshoot or to ensure that you system passes all checks to setup a Docker/Traefik stack.</li>
<li>Auto-Traefik now has 3 levels of licensing: Free/Unregistered, Auto-Traefik, and Auto-Traefik+ to fit the needs of most people.</li>
<li>Most of the navigation is now through a commandline GUI. This will continue to evolve.</li>
<li>Added ability to complete the whole process in steps, instead of one-go as in v1.</li>
<li>Expanded Auto-Traefik Options - reset, view key information, license checks, and build a sanitized troubleshooting log without any sensitive information.</li>
<li>Modified main docker compose file to now be more modular. All the individual services are available as individual yml files in a separate folder.</li>
<li>Added Authelia for multifactor authentication, with ability to change authentication mechanisms for apps from the UI.</li>
<li>Added Portainer. This is just the start. Many more apps will be added. </li>
<li>More to come.</li>
</ul>

<h5>v1.1.4 - October 31, 2023</h5>
<ul>
<li>Increased service start check timeout to avoid false positives</li>
</ul>

<h5>v1.1.3 - October 30, 2023</h5>
<ul>
<li>Minor changes to logging - added a few more logging spots</li>
<li>Updated Traefik version to 2.10</li>
<li>Fixed a bug where subdomain resolution check would not exit on error</li>
</ul>

<h5>v1.1.2 - October 16, 2023</h5>
<ul>
<li>Added auto-traefik output logging to /tmp/auto-traefik/auto-traefik.log to help troubleshoot</li>
<li>Added failsafe - in case container with same name already exists, script will fail</li>
</ul>

<h5>v1.1.1 - October 14, 2023</h5>
<ul>
<li>Added a backup method to check WAN IP. Some IP check sites present Cloudflare challenge, interfering with the process.</li>
</ul>

<h5>v1.1 - October 9, 2023</h5>
<ul>
<li>Added version check. Now the users will see a warning of there is a new version available for download.</li>
<li>Clean up repository and organized files.</li>
<li>Reduced unnecessary sleeps/waits in the script.</li>
<li>Improved check for certificates, instead of sleeping for a certain time, which can fail sometimes. </li>
<li>Added check for Let's Encrypt rate limiting.</li>
<li>Added backup for acme.json if successful. Can be handy if rate limit is hit.</li>
</ul>

<h5>v1.0 - September 23, 2023</h5>
<ul>
<li>Initial Release</li>
</ul>