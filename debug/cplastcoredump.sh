coredump_dir=/var/lib/apport/coredump
last_coredump=$(ls -t "$coredump_dir" | head -n 1)

echo cp "$coredump_dir"/$last_coredump "$PWD"/"$1"
cp "$coredump_dir"/$last_coredump "$PWD"/"$1"
