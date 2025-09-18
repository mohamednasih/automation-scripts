# open_fds.sh

A Bash script to inspect open file descriptors for a given process or terminal in Linux. Useful for debugging, monitoring, or understanding resource usage.

```bash
./open_fds.sh <process_id | terminal>
```
- `<process_id>`: The PID of the process you want to inspect.
- `<terminal>`: The terminal name (e.g., `pts/2`) to inspect processes associated with that terminal.

**Example:**
```bash
./open_fds.sh 1234      # Show open file descriptors for process with PID 1234
./open_fds.sh pts/2     # Show open file descriptors for processes in terminal pts/2
```

- Lists all open file descriptors for the specified process or terminal.
- Helps identify files, sockets, pipes, and other resources currently in use.
- Useful for troubleshooting resource leaks or monitoring process activity.

---

## Notes
- Requires appropriate permissions to inspect other users' processes.
- Make sure the script is executable: `chmod +x open_fds.sh`
- Run from the `open_fds/` directory or add to your PATH for convenience.

---

## Author
mohamednasih
