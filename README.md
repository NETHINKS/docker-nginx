# Docker container for nginx reverse proxy

This is a Docker container for [NGINX](https://nginx.org/en "NGINX Website") for the use as reverse proxy.

## Environment Variables
The following environment variables can be used:

| Variable     | Description |
|--------------|-------------|
| NGINX\_SSL\_CERT  | Path to the SSL certificate file |
| NGINX\_SSL\_KEY  | Path to the SSL key file |
| NGINX\_LOCATION\_\*  | Locations for nginx config. Format: <name>;<location>;<url>. |

If both *NGINX_SSL_CERT* and *NGINX_SSL_KEY* were set, the server will start on port 443 and create a redirect 
from port 80 to 443. If the variables are not set, just port 80 will be open.


## Exporting Ports
By default no ports were exported, but the following ports may be interesting:

| Port | Description                                                 |
|------|------------------------------------------------------------ |
| 80   | HTTP Access                                                 |
| 443  | HTTPS Access (only if you define it in your configuration)  |
