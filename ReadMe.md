## Svn to Git migration
### Steps to get this running
- Make sure you have Docker installed.
- Clone this repo.
- After running docker, use the command `docker compose up -d` in the top level directory.
### What it currently does
- Initializes 2 docker containers, one is the svn server, other is svn client.
- There are some mock data currently in the svn server.
### Going ahead
- Limit resources using cgroups, to simulate a very large svn codebase.
- Test localized tools in another docker container to achieve the migration.
### Current candidates
- git svn
- svn2git
- reposurgeon