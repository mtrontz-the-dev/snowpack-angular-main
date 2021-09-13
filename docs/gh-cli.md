[GitHub CLI](https://cli.github.com/manual/)

Work seamlessly with GitHub from the command line.

USAGE
  gh <command> <subcommand> [flags]

CORE COMMANDS
  browse:     Open the repository in the browser
  gist:       Manage gists
  issue:      Manage issues
  pr:         Manage pull requests
  release:    Manage GitHub releases
  repo:       Create, clone, fork, and view repositories

ACTIONS COMMANDS
  actions:    Learn about working with GitHub actions
  run:        View details about workflow runs
  workflow:   View details about GitHub Actions workflows

ADDITIONAL COMMANDS
  alias:      Create command shortcuts
  api:        Make an authenticated GitHub API request
  auth:       Login, logout, and refresh your authentication
  completion: Generate shell completion scripts
  config:     Manage configuration for gh
  extension:  Manage gh extensions
  help:       Help about any command
  secret:     Manage GitHub secrets
  ssh-key:    Manage SSH keys

EXTENSION COMMANDS
  bump
  delete-repo
  ost
  todo

FLAGS
  --help      Show help for command
  --version   Show gh version

EXAMPLES
  $ gh issue create
  $ gh repo clone cli/cli
  $ gh pr checkout 321

ENVIRONMENT VARIABLES
  See 'gh help environment' for the list of supported environment variables.

LEARN MORE
  Use 'gh <command> <subcommand> --help' for more information about a command.
  Read the manual at https://cli.github.com/manual

FEEDBACK
  Open an issue using 'gh issue create -R github.com/cli/cli'