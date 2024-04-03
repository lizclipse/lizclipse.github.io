#!/usr/bin/env nu
let output = "_site"
if ($output | path exists) { rm -r $output }
cp -r home $output
cp -r wiki/book $"($output)/wiki"
glob $"($output)/wiki/**/*.html"
  | each {|it|
      open -r $it
        | str replace -a -r 'href="(.*?)\/index\.html"' 'href="${1}/" '
        | str replace -a -r 'href="index\.html"' 'href="." '
        | str replace -a -r 'href="(.*?)\.html"' 'href="${1}" '
        | save $it -f
    }
