
# Copy Last Core Dump

This script copies the most recent core dump from `/var/lib/apport/coredump` into the current directory.

## Usage

First, enable core dumps:

```bash
ulimit -c unlimited
```


Then run the script:

```bash
./cplastcoredump.sh <output_filename>
```

## Notes

- You may need `sudo` to access `/var/lib/apport/coredump`.
- If no core dumps exist, the script will fail.
