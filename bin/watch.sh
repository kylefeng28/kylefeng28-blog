# Build scss
(
cd static/css
scss --watch .:.
) &

# Build site
hugo server --watch --buildDrafts

# dirty way to end
killall scss
