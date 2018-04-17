#! /bin/bash

# activate virtualenv; `.` is an alias for `source` that also works in
# non-bash shells
venv="$HOME/path/to/virtualenv"
if [ -r "$venv/bin/activate" ]; then
  . "$venv/bin/activate"
else
    echo 1>&2 "Cannot activate virtualenv '$venv'"
    exit 69  # EX_UNAVAILABLE
fi

# for debugging purposes, it's a good idea to print out the venv name
# and the actual python interpreter used
echo 1>&2 "Running in virtualenv '$venv', using python interpreter $(command -v python) ..."

# `exec` must be the very last statement
exec python my_script.py
