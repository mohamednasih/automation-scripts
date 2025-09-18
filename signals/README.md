# siginspect.sh

A Bash script to inspect and decode signal information for a given Linux process. Useful for debugging, monitoring, and understanding how signals are handled by a process.

---

## Usage

```bash
./siginspect.sh <pid> [verbose]
```
- `<pid>`: The process ID to inspect.
- `[verbose]`: Optional. If provided, prints raw signal info and status lines for deeper inspection.

**Examples:**
```bash
./siginspect.sh 1234         # Show decoded signal info for process 1234
./siginspect.sh 1234 verbose # Show raw signal info and status for process 1234
```

---

## Features
- Checks if the provided PID is valid.
- Reads signal-related fields from `/proc/<pid>/status`.
- Decodes and displays:
  - Pending signals
  - Blocked signals
  - Ignored signals
  - Caught signals
- Optionally prints raw signal info and status lines for verbose output.

---

## Notes
- Requires permission to read `/proc/<pid>/status` for the target process.
- Make sure the script is executable: `chmod +x siginspect.sh`
- Run from the `signals/` directory or add to your PATH for convenience.

---
