# DuckDNS

Duckdns is a free service which will point a DNS (sub domains of duckdns.org) to an IP of your choice. The service is completely free, and doesn't require reactivation or forum posts to maintain its existence.

duckdns.org

<img src="https://i.ibb.co/dJLZG9q/duckdns.png" width="30%" height="auto">

## How to use this Makejail

```sh
appjail makejail \
	-j duckdns \
	-o virtualnet=":<name> default" \
	-o nat -- \
		--duckdns_subdomains first,second \
		--duckdns_token aaaaaaaa-bbbb-ccbbb-1234-ffffffffffff
```

### Arguments

* `duckdns_log` (default: `/dev/null`): Path to the log file.
* `duckdns_subdomains` (mandatory): Subdomains to update their IP addresses. Multiple subdomains allowed, comma separated, no spaces.
* `duckdns_token` (mandatory): DuckDNS token.
* `duckdns_minute` (default: `*/5`).
* `duckdns_hour` (default: `*`).
* `duckdns_mday` (default: `*`).
* `duckdns_month` (default: `*`).
* `duckdns_wday` (default: `*`).

Since a cronjob is in charge of executing the script, `duckdns_minute`, `duckdns_hour`, `duckdns_mday`, `duckdns_month` and `duckdns_wday` correspond to *minute*, *hour*, *day of month*, *month* and *day of week*.