<h3>Releases</h3>

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