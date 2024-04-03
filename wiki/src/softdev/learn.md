# Learning to program

I've had various thoughts on how I'd recommend learning to program in the first place.
The most challenging thing is that I've been writing code for so long it's hard to
put myself into the shoes of someone who's never seen code before.
My best recommendations so far is this:

- Start with a simple, dynamically-typed language
  - Pick one based on the sort of things you'd want to make
  - JavaScript for web-dev, Python for data-processing or desktop GUI apps
- Make things you want to use
  - Creating things for the sake of learning how is not how I personally work
  - I'll only start writing code when I want to make something useful
- Switch to statically typed language sooner-rather-than-later
  - Static types are essential for any moderately-sized project or larger
  - Things like C# (C-sharp) (my beloved) or Java (my beloathed) are good to start with
  - While I love [Rust](http://rust-lang.org), it's really hard to start with and only
    recommended if you're already decent at programming
  - C++ is still used in older projects, but is starting to head out with newer ones
  - [Go](https://go.dev) is simple to start with and well supported
- Start with [Visual Studio Code](https://code.visualstudio.com) as editor
  - Nearly everything supports it
  - Tons of extensions
  - Very well supported
- Learn how to use a terminal
  - Most programming tools only work in the terminal
  - Many need at least a glacing familiarity to be installed and used
  - Knowing the basics of a POSIX-compliant shell is very useful
    - Most GNU/Linux systems use `bash`
    - macOS uses `zsh`
- Learn [Docker](https://www.docker.com)
  - Not immediately, but fairly soon
  - Most software deployment is done via this now
  - [Podman](https://podman.io) technically works but is _not_ a drop-in replacement
    (despite what may be implied)
- Learn C
  - Write something in it
  - It's the lingua franca of the software world - nearly all languages support interoperability
    via C - so knowing how to read and write it is important
  - Not necessary to write a lot, just enough to be able to understand FFIs
- Use GNU/Linux (or macOS if you already have it)
  - Most software dev happens and it targeted here
  - Windows can work, but using a unix-like system is typically expected in most places
  - Linux distros are nearly all free as well, making for a low barrier to entry
  - Ubuntu is the best place to start if you know nothing

To start learning to program, the main thing above all is to be comfortable researching
something you don't know.
There are _a lot_ of concepts to pick up, and it's expected that you will have to look
things up constantly to get by.
I've already used multiple bits of jargon that a non-programmer won't understand, but
this is supposed to be compact and a jumping-off-point, so I will not expand any of
it here.
Researching is a skill _in-and-of itself_, and it's important that any new programmer
learns how to do it efficiently.
