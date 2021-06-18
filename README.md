# Rakudo Releases Readiness Toolkit

R3 is a useful toolkit for Rakudo release managers and developers, aimed to help with Rakudo release preparations.

---

![report example](https://raw.githubusercontent.com/melezhik/r3tool/master/screenshots/r3log-sample.png)


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

Run tests

Against certain rakudo commit:

```bash
export RAKUBIN=/tmp/whateverable/rakudo-moar/4f61a108b1e717a8e05ee861738a412d55be6ed4/bin/raku
tomty --color --all --show-failed
```

Against default rakudo:

```bash
export RAKUBIN=$(which raku)
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

Only old, fixed issues (aka regression):

```bash
tomty --only=closed --color --show-failed
```

Hard to fix issues:

```bash
tomty --only=hardtofix --color --show-failed
```

One can combine tags, running different groups at once:

```bash
tomty --only=closed,performance --color --show-failed
```

# Running on predefined environments

Instead of exporting `RAKUBIN` env variable, one can set `tomty` environment for convenience:

```bash
tomty --env-edit 4f61a108
```

```raku
%*ENV<RAKUBIN> = '/tmp/whateverable/rakudo-moar/4f61a108b1e717a8e05ee861738a412d55be6ed4/bin/raku';

%(
);
```

```bash
tomty --all --env=4f61a108 --color --show-failed
```

One can see a list of predefined environments by:

```
tomty --env-list
```

# Create a new issue

One can use this command to generate a stub code for a new Rakudo bug:

```bash
tom  new-issue 
```

After you've [written a test](https://github.com/melezhik/r3tool/blob/master/docs/how-to-write-tests.md), 

Run the following command to run a new test:

```bash
tomty <issue-number>
```

# Test tags

Tags allow to split tests by groups.

To assign tag to test run a following command:

```bash
export EDITOR=nano
tomty --edit <issue-number>
```

Then edit a following tomty test _header_:

```raku
=begin tomty
%(
  tag => $["open", "fresh", "slow"]
);
=end tomty
```

# List of tags

| tag        | description |
| ---------- | ------------|
| open       | open issue  |
| closed     | closed issue  |
| nr         | reported but not reproduced  |
| rc         | issues to be closed in the upcoming release  |
| fresh      | fresh issue  |
| slow       | running a test takes a considerable time  |
| hardtofix  | hard to fix issue  |

# Another helpful commands

Remove issue

```bash
tom rm-issue
```

# Things to do

* Add bugs for upcoming release and tag them as `rc`

* Run on logically `OR` tags, like `--only=open+performance` - only unfixed performance issues

* Automatically update `open/close` tags by GH issues statuses 

# Author

Alexey Melezhik

# See also

Following tools are used to run tests:

* [Tomty](https://github.com/melezhik/Tomty)
* [Tomtit](https://github.com/melezhik/Tomtit)
* [Sparrow](https://github.com/melezhik/Sparrow6)


# Thanks to

God Who inspires me in my life!
