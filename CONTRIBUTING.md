# Contributing

When contributing to this repository, please first discuss the change you wish
to make via issue, email, or any other method with the owners of this
repository before making a change.

## About the repository configuration

1. Before you start your work, make sure to setup the repository
   - This project uses git hooks with the help of [`lefthook`](https://github.com/evilmartians/lefthook).
     Make sure to have `lefthook` installed and run `lefthook install` to
     install the git hooks. This step is necessary for quality assurance.
   - Optionally (but highly recommended) run `git config --local commit.gpgsign true`
     to configure your local working copy of the repository to automatically
     sign your work. Also add your e-mail address and public key to the [`allowed_signers`](./allowed_signers)
     file so others can confirm your work locally. See also [Commit Signing](#commit-signing)
     for more information.
2. This repository uses [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).
   Make sure to follow the pattern. You can use a tool like [`commitizen`](https://commitizen-tools.github.io/commitizen/)
   to help you.
3. Do not push your changes directly to the main branch! Create a pull request
   instead. After a code review by the project maintainer it will be considered
   for contribution.

### Commit Signing

To make sure a commit is actually done by you and no one is impersonating you,
`git` supports signing your work. This can be done either by using a `gpg` or
`ssh` key. GitHub can verify a commit was actually made by you. The [GitHub Docs about Signing Commits](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits)
and [this blog post by Git Tower about Setting Up SSH for Commit Signing](https://www.git-tower.com/blog/setting-up-ssh-for-commit-signing/)
explain how to create a signing key and configure `git` to use this key for
commit signing. Both articles tell you how to add the public key to GitHub so
GitHub can approve your work.
