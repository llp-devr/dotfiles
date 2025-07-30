
# Set BROWSER to Windows Google Chrome
GOOGLE_CHROME="$(wslpath 'C:/Program Files/Google/Chrome/Application/chrome.exe')"

[ -f "$GOOGLE_CHROME" ] && export BROWSER="$GOOGLE_CHROME"
