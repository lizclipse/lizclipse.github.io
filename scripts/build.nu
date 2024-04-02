#!/usr/bin/env nu
let output = "_site"
if ($output | path exists) { rm -r $output }
cp -r home $output
cp -r wiki/book $"($output)/wiki"
