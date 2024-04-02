#!/usr/bin/env nu
let tag = (http get "https://api.github.com/repos/rust-lang/mdbook/releases/latest" | get tag_name)
let url = $"https://github.com/rust-lang/mdbook/releases/download/($tag)/mdbook-($tag)-x86_64-unknown-linux-gnu.tar.gz"
let bin = ".bin/mdbook"
mkdir $"./($bin)"
http get --raw $url | tar -xz --directory $"./($bin)"
print $"mdbook installed to (pwd)/($bin)"
$"(pwd)/($bin)\n" | save --append $env.GITHUB_PATH
