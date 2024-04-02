# Nushell

- Still quite new, lots of little issues and incompatabilities
  - Can function just fine as a login shell, but be aware of this
  - Main thing to be aware of that many installers/tutorials that provide shell commands
    assume a POSIX-compliant shell, which `nu` is not
- [Nix](./nix.md) doesn't work
- When set as a login shell, it won't load any config/env when executing a command
  directly via SSH (e.g. `ssh hostname '$env.PATH'`)
  - [nushell/nushell#10219](https://github.com/nushell/nushell/issues/10219)
  - Hacky workaround that I'm using in my own config:
    ```nu
    # Executes a shell command on a remote machine using a nu login shell.
    #
    # TODO: This is a workaround; once there's a fix in nu this can be dropped.
    export def ssh-exec [host: string, cmd: string --tty (-t), ...rest: string]: nothing -> string {
        let macNu = "/opt/homebrew/bin/nu"
        let linuxNu = "/home/linuxbrew/.linuxbrew/bin/nu"
        ssh $host ...$rest $"^$\"\(if \('($macNu)' | path exists) { '($macNu)' } else { '($linuxNu)' })\" -l -c '($cmd)'"
    }
    ```
- As seen above, `highlight.js` does not support nu highlighting
  - TODO: open GH issue
