#!/usr/bin/env nu

# Install necessary deps for building
export def 'main install-deps' [] {
  cargo binstall mdbook
}

# Build wiki
export def 'main build-wiki' [] {
  cd ./wiki
  mdbook build
}

# Build top-level site
export def 'main build-site' [] {
  print "Building site..."

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
    | ignore

  print $"Site built to ($output)"
}

# Lint repo
export def 'main lint' [] {
  print "Checking with dprint"
  dprint check
}

export def main [] {
  ./toolkit.nu --help
}
