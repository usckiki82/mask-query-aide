Mask-Query-Aide
===============
*  Author: Christy Madden (mailto:christine.m.madden19@gmail.com)
*  This project trains an ML model to recognize people and predict whether they have a mask on or not
*  Utilized this project to learn some things about docker images so see `project-notes.rst`
*  My first project with setting up a Git LFS repo since ipynb files were getting large!
*  Setup a makefile to help ease running the project


Installation Instructions
=========================
*  This repo uses Git LFS, so verify it is installed by running `git lfs install`
*  If not already installed on your machine install Git LFS per the following instructions:  `https://docs.github.com/en/free-pro-team@latest/github/managing-large-files/installing-git-large-file-storage`
*  Verify your `$HOME/.gitconfig` file has a `[filter "lfs"]` section
*  Verify that `./.git/lfs` has been added to your local repo directory
*  Tool for cleaning repo if large data files get saved is BFG Repo-Cleaner `https://rtyley.github.io/bfg-repo-cleaner`
*  Github page on cleaning repository `https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/removing-sensitive-data-from-a-repository`
*  Another how-to: `https://medium.com/vooban-ai/migrating-to-git-lfs-for-developing-deep-learning-applications-with-large-files-89132cedf08A`

Make File Instructions
======================
*  Since the python tensorflow package requires specific versions of Python, this projects chooses to run code in a docker container rather than modify the existing machine
*  Below is a list of make file commands, which also includes commands to run the docker container

| Makefile command      | description                                      |
| ----------------------|--------------------------------------------------|
| `install`             | Installs this repo as python package |
| `develop`             | Installs this repo as python package in develop mode|
| `venv`                | Creates a venv in `.venv` directory|
| `dock-build-custom`   | Build the custom docker from the Dockerfile|
| `dock-run-custom`     | Runs the custom docker which ends in an open jupyter lab session|
| `dock-pull-tf`        | Pulls down latest tensorflow docker image (unmodified)|
| `dock-run-tf`         | Runs the latest tensorflow docker image (unmodified)|
| `dock-check`         | Checks docker status ( ps command )|
| `clean`               | Cleans the venv|

References
==========
* None

Contributing
============

Using following format to create new features for this project:

```
$ git clone <ENTER SSH HERE>
$ cd reponame
$ git checkout -b feature/feature_name
$ git add <files>
$ git commit -am "Add my feature"
$ git push origin feature/feature_name
< Clean-up >
```