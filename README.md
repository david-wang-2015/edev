# What's edev
edev is the tool/script to deploy the embeeded software developing environment.
As an embedded software engineer, the most used tools are Git, editor, etc. Most used programming languages are usually C, assembely and C++ sometime.
edev provides the scripts to deploy and configure the following tools on your PC.
- Git
- Vim (editor)

# How to use edev
## Prerequisite
In theory, it should work on the OS derived from debian. The requirement for the OS:
- Ubuntu 16.04 and above
- Debian 9 and above

Tested on the following OS
- Ubuntu 16.04
- Debian 9.7 (Linux on Windows subsystem)

## Deploy all the tools and configurations
To delpy all, it's quite easy

`./deploy-ubuntu.sh`

This script will call the `setup.sh` in each subfolder.

## Deplay specific tool and configuration
Goto the corresponding subfolder of the tool, e.g. `git`. Then

`./setup.sh`

# Configuration of the tool
## Git
TBD

## Vim
It's initiated from the project [use_vim_as_ide](https://github.com/yangyangwithgnu/use_vim_as_ide) (with [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/) license).
I made some changes for embedded development.

# License
Please check the LICENSE file.

# Contributing
It's welcome to contribute your idea or patches to the project.
If you'd like to keep your copyright, please state it on top of the file.
