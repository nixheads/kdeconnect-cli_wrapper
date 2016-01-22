# kdeconnect-cli wrapper
A series of bash script wrappers for the CLI client for KDEconnect

## Usage

### kdecclist

```bash
$ ./kdecclist
```

``kdecclist`` is a script to list all device IDs on the LAN.
The other scripts such as ``kdeccpair``, ``kdeccunpair``, and ``kdeccping``
all call this script by default for the ``device`` field of ``kdeconnect-cli``.

### kdeccpair

```bash
$ ./kdeccpair
```

The ``kdeccpair`` script works by calling ``kdeconnect-cli``'s default pairing 
method, so in effect running ``$ ./kdeccpair`` without input runs:

```bash
$ kdeconnect -d "$(./kdecclist)" --pair
```

while running ``kdeccpair`` with input effectively runs:

```bash
$ kdeconnect -d "$1" --pair
```
