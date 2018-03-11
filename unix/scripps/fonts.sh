# https://wiki.debian.org/Fonts


# in_konsole=$(echo $DESKTOP_SESSION);
# if [[ $(echo $DESKTOP_SESSION | grep 'plasma') = *java* ]]; then
  # echo "Found a Tomcat!"
# fi
if "$DESKTOP_SESSION" | grep -q 'plasma'; then
  echo "Found a Tomcat!"
fi
# cp -r ../../fonts/fura-code-nerdfont ~/.fonts/fura-code-nerdfont
# cp -r ../../fonts/ubuntu-mono-nertfont ~/.fonts/ubuntu-mono-nerdfont
# fc-cache -v
