# Git Helper Scripts

A set of simple Bash scripts to speed up common Git operations by acting on the first file listed by `git diff --name-only`. Useful for quick iteration and automation in your workflow.


### `git-add-first.sh`

Adds the first changed file to the staging area.

**Usage:**

```bash
./git-add-first.sh [path]
```

- If `[path]` is provided, operates in that directory; otherwise, defaults to the current directory.
- Stages the first file shown by `git diff --name-only`.

---

### `git-diff-first.sh`

Shows the diff for the first changed file.

**Usage:**

```bash
./git-diff-first.sh [path]
```

- If `[path]` is provided, operates in that directory; otherwise, defaults to the current directory.
- Displays the diff for the first file listed by `git diff --name-only`.

---

### `git-restore-first.sh`

Restores the first changed file to its last committed state.

**Usage:**

```bash
./git-restore-first.sh
```

- Restores the first file listed by `git diff --name-only`.
- Prints a success or failure message.

---

## Notes

- All scripts operate on the first file shown by `git diff --name-only`, making them ideal for quick, repetitive tasks.
- Make sure the scripts are executable: `chmod +x scriptname.sh`
- Place scripts in your PATH or run from the `git/` directory.

---

## Example Workflow

```bash
./git-diff-first.sh      # See changes in the first file
./git-add-first.sh       # Stage the first changed file
./git-restore-first.sh   # OR Restore the first changed file
```
