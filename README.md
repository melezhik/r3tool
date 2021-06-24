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

# upload Sparrow plugins
git clone https://github.com/melezhik/sparrow-plugins /tmp/sparrow-plugins
cd /tmp/sparrow-plugins
cd bash
cd ../directory
s6 --upload
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

More sophisticated filtering

Release `2021_06`, open issues:

```bash
tomty --only=rc_2021_06+open --color --show-failed
```

Release `2021_06`, closed issues but skip slow tests:

```bash
tomty --only=rc_2021_06+closed --skip=slow --color --show-failed
```

Release `2021_05` or `2021_05`, issues:

```bash
tomty --only=rc_2021_05,rc_2021_06 --color --show-failed
```

Test for rakudo release 2021_06 against all bugs, but skipping open,example,slow and requiring unicode support in terminal:
```bash
tomty --env=2021_06 --skip=slow,example,open,unicode --color --show-failed
```

# Running on predefined environments

Instead of exporting `RAKUBIN` env variable, one can set [tomty environment](https://github.com/melezhik/Tomty#environments) for convenience:

```bash
tomty --env-edit 2021_06
```

```raku
%*ENV<RAKUBIN> = '/tmp/whateverable/rakudo-moar/4887a169b47a1b5805dc3d90b5aa4c83a86fc4dd/bin/raku';

%(
);
```

```bash
tomty --all --env=2021_06 --color --show-failed
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
| closed     | closed issue/PR  |
| nr         | reported but not reproduced      |
| rc_<YYYY_MM>  | issues/PR added in this release  |
| pr         | test for PR | 
| fresh      | fresh issue  |
| slow       | running a test takes a considerable time  |
| hardtofix  | hard to fix issue  |
| unicode    | tests require unicode support in terminal |

# Another helpful commands

Remove issue

```bash
tom rm-issue
```

Show Raku version used in tests

```bash
tom raku-version
```

Show last N rakudo commits

```bash
tom rakudo-commits
```


# Things to do

* Add bugs for upcoming release (`2021_06`) and tag them as `rc`

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
