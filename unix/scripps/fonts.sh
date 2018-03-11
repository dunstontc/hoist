# https://wiki.debian.org/Fonts

if echo "$DESKTOP_SESSION" | grep -q 'plasma'; then
  cp -r ../../fonts/fura-code-nerdfont ~/.fonts/fura-code-nerdfont
else
  cp -r ../../fonts/ubuntu-mono-nerdfont ~/.fonts/ubuntu-mono-nerdfont
fi

fc-cache -v
