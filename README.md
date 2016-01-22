# kdeconnect-cli wrapper
A series of bash script wrappers for the CLI client for KDEconnect

## Usage

### kdecclist

```bash
$ ./kdecclist
```

``kdecclist`` is a script to list all device IDs on the LAN.
The other scripts such as ``kdeccpair``, ``kdeccunpair```, and ``kdeccping``
all call this script by default for the ``device`` field of ``kdeconnect-cli``.
