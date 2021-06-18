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
export raku=/tmp/whateverable/rakudo-moar/4f61a108b1e717a8e05ee861738a412d55be6ed4/bin/raku
tomty --color --all --show-failed
```

Against default rakudo:

```bash
export raku=$(which raku)
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


To see available groups, say:

```
tom tags
```
# Running on predefined environments

Instead of exporting `raku` env variable, one can set `tomty` environment for convenience:

```bash
tomty --env-edit 4f61a108
```

```raku
%*ENV<raku> = '/tmp/whateverable/rakudo-moar/4f61a108b1e717a8e05ee861738a412d55be6ed4/bin/raku';

%(
);
```

```bash
tomty --all --env=4f61a108 --color --show-failed
```

# Create an new issue

One can use this command to generate a stub code for a new Rakudo bug:

```bash
tom  new-issue 
```

After you've [written a test](https://github.com/melezhik/r3tool/blob/master/docs/how-to-write-tests.md), run the following command to add a new test to a suite:

```bash
tom rebuild
```

# Test tags

Tags allow to split tests by groups. Use following flow to assign tags to tests

```bash
export EDITOR=nano
tom --env-edit default
```

Tags are defined as Arrays in tom environment file:

```raku
{
  issues => %(
    2920 => %( tag => [ 'closed' ] ),
    4077 => %( tag => [ 'closed' ] ),
    4079 => %( tag => [ 'closed' ] ),
    4083 => %( tag => [ 'closed' ] ),
    4089 => %( tag => [ 'closed' ] ),
    4097 => %( tag => [ 'open', 'performance' ] ),
    4100 => %( tag => [ 'open' ] ),
    4116 => %( tag => [ 'closed' ] ),
    4118 => %( tag => [ 'closed' ] ),
    4119 => %( tag => [ 'open' ] ),
    4124 => %( tag => [ 'open', 'hardtofix' ] ),
    4266 => %( tag => [ 'closed' ] ),
    4363 => %( tag => [ 'closed' ] ),
    4369 => %( tag => [ 'closed' ] ),
  )
}
```

Add/removed desired tags and run rebuild:

```bash
tom rebuild
```

# Another helpful commands

Remove issue

```bash
tom rm-issue
```

# Things to do

* Add bugs for upcoming release and tag them as `rc`

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
