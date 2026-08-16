# DNS Lookup Tool (Forward & Reverse)

A Bash script for bulk DNS lookups. It reads a list of IP addresses or hostnames, automatically detects which type each entry is, performs the correct lookup (forward or reverse), and logs the results.

## Features

- Auto-detects whether an entry is an IP address or a hostname
- Performs forward lookups (hostname to IP) using dig
- Performs reverse lookups (IP to hostname) using dig -x
- Logs resolved results, or notes when no record is found
- Handles mixed input files (IPs and hostnames together)

## Requirements

- Bash
- dig (part of dnsutils / bind-utils)

## Usage

```bash
chmod +x lookup.sh
./lookup.sh
```

The script reads entries from `dns.txt` (one per line) and appends results to `logs.txt`.

## Input Format

**dns.txt**
```
8.8.8.8
google.com
1.1.1.1
github.com
```

## Output Format

**logs.txt**
```
8.8.8.8 -> dns.google
google.com -> 142.250.183.14
1.1.1.1 -> one.one.one.one
github.com -> 140.82.121.3
```

If no record is found for an entry, the script logs:
```
<entry> -> No record present
```

   fi
done < dns.txt
```

## License

MIT
