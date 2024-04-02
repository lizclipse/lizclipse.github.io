# GitHub Actions/Workflows

- Workflows with multiple steps _do not_ share the same environment
  - Each job starts on an entirely fresh env, including any checked-out files or built artefacts
  - To share built outputs, something like [actions/upload-artifact](https://github.com/actions/upload-artifact)
    should be used
    - This wiki is deployed using this kind of system
  - This is not necessarily the case with self-hosted runners, but it's best to assume it
    is for best compatibility
