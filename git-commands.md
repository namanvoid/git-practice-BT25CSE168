# Git Commands Used

| Command | Purpose |
|---|---|
| `git init -b main` | Create a new repository with `main` as the default branch |
| `git config user.name / user.email` | Set the author identity for commits |
| `git add .` | Stage all changes |
| `git commit -m "msg"` | Save staged changes with a descriptive message |
| `git status` / `git log --oneline --graph` | Inspect state and history |
| `git checkout -b <branch>` | Create and switch to a new branch |
| `git checkout main` | Switch back to main |
| `git merge <branch>` | Merge a branch into the current branch |
| `git remote add origin <url>` | Link the local repo to GitHub |
| `git push -u origin main` | Push main and set upstream |
| `git push origin <branch>` | Push a feature branch (for pull requests) |
| `git pull` | Download and merge remote changes (after merging PRs on GitHub) |

## Merge Conflict
**What happened:** Branch `edit-status-a` and `main` both changed the last line
of `README.md` ("Work in progress.") to different text. Merging produced a
conflict in `README.md`.

**How I resolved it:** Opened the file, found the `<<<<<<<`, `=======` and
`>>>>>>>` markers, replaced the block with one combined line
("Status: all exercises complete and ready for review."), then ran
`git add README.md` and `git commit` to complete the merge.
