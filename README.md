# Rakudo Releases Readiness Toolkit

R3 is a useful toolkit for Rakudo release managers and developers, aimed to help with Rakudo release preparations.

# Installation

```bash
# install dependencies
zef install --/test https://github.com/melezhik/Sparrow6.git 
zef install --/test https://github.com/melezhik/Tomtit.git
zef install --/test https://github.com/melezhik/Tomty.git

# install Bash completions
tom --completion
tomty --completion

# setup local Sparrow repo
s6 --repo-init ~/repo
s6 --index-update
```

# Usage

```bash
git clone https://github.com/melezhik/r3tool
cd r3tool
```

```bash
tomty --color --all --show-failed
```

# Tests groups

One can run various test groups

Examples:

Certain issue:

```bash
tomty --color 4369
```

Only open, not yet fixed issues:

```bash
tomty --only=open --color --show-failed
```

Only old, fixed issues:

```bash
tomty --only=closed --color --show-failed
```

Hard to fix issues:

```bash
tomty --only=hardtofix --color --show-failed
```

To see available groups, say:

```
tom tags
```

# Report example

![report example](https://raw.githubusercontent.com/melezhik/r3tool/master/screenshots/r3log-sample.png)

# Author

Alexey Melezhik

# See also

Following tools are used to run tests:

* Tomty
* Tomtit
* Sparrow
