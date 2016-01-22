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
This script runs:

```bash
$ kdeconnect-cli --id-only -l
```

### kdeccpair

```bash
$ ./kdeccpair
```

The ``kdeccpair`` script works by calling ``kdeconnect-cli``'s default pairing 
method, so in effect running ``$ ./kdeccpair`` without input runs:

```bash
$ kdeconnect -d "$(./kdecclist)" --pair
```

While running ``$ ./kdeccpair`` with input effectively runs:

```bash
$ kdeconnect -d "$1" --pair
```

### kdeccunpair

```bash
$ ./kdeccunpair
```

The ``kdeccunpair`` script works by calling ``kdeconnect-cli``'s default 
unpairing method, so in effect running ``$ ./kdeccunpair`` without input runs:

```bash
$ kdeconnect -d "$(./kdecclist)" --unpair
```

While running ``$ ./kdeccunpair`` with input effectively runs:

```bash
$ kdeconnect -d "$1" --unpair
```

### kdeccping

```bash
$ ./kdeccping
```

The ``kdeccping`` script calls:

```bash
$ kdeconnect-cli -d "$(./kdecclist)" --ping
```

If there is no user input. While if there is input it runs:

```bash
$ kdeconnect-cli -d "$(./kdecclist)" --ping-msg "$1"
```

## TODO:

* A script for ``--refresh``
* A script for ``--share <path>``
* A script for ``--list-notifications``
* A script for ``--lock``
* A script for `` -a, --list-avilable``
* Make scripts not use ./ for execution
* Create Makefile for install
