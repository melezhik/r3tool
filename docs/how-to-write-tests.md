# How to write tests?

In many cases new test is just a Bash script with an optional Raku regexp to check a script output.

First, run test generator which will create a test stub code:

```bash
tom new-issue
```

```
load configuration from /root/projects/r3tool/.tom/env/config.pl6
[repository] :: index updated from file:///root/repo/api/v1/index
issue number: 123
[tasks/new-issue] :: stderr: ++ mkdir -p 123
[tasks/new-issue] :: stderr: ++ echo 'cat $root_dir/task.bash'
++ echo '$RAKUBIN -e "# some code to brake" '
[tasks/new-issue] :: <empty stdout>
```

Now we have a test folder, named after issue number - `123` with generated code:

```bash
cat  123/task.bash
```

```
cat $root_dir/task.bash
$RAKUBIN -e "# some code to brake"
```

We can run a test using Sparrow cli:

```bash
RAKUBIN=$(which raku) s6 --task-run 123/
```

```
[sparrowtask] :: run sparrow task 123/
[sparrowtask] :: run thing 123/
[123/] :: cat $root_dir/task.bash
[123/] :: $RAKUBIN -e "# some code to brake"
```

Apparently nothing happens here as we run stub code that does nothing.

Let's convert it into real issue case:

```bash
nano $root_dir/task.bash
```

```bash
$RAKUBIN -e 'die "something went wrong"'
```

Now when we run, we get expected test failure:

```bash
RAKUBIN=$(which raku) s6 --task-run 123/
```

```
[sparrowtask] :: run sparrow task 123/
[sparrowtask] :: run thing 123/
[123/] :: cat $root_dir/task.bash
[123/] ::
[123/] :: $RAKUBIN -e 'die "something went wrong"'
[123/] :: stderr: something went wrong
  in block <unit> at -e line 1

[123/] :: task exit status: 1
[123/] :: task 123/ FAILED
```

# Check rules

Some code examples do not fail, they produce unexpected output. Instead of test exit code, we can use
Raku regular expressions as a verification criteria:

```
cat 123/tast.bash
```

```
cat $root_dir/task.bash

$RAKUBIN -e 'say "I say this"'
```

```bash
cat 123/task.check
```

```
regexp: 'I say that'
```

```bash
RAKUBIN=$(which raku) s6 --task-run 123/
```

```
[sparrowtask] :: run sparrow task 123/
[sparrowtask] :: run thing 123/
[123/] :: cat $root_dir/task.bash
[123/] ::
[123/] :: $RAKUBIN -e 'say "I say this"'
[123/] :: I say this
[task check] stdout match <'I say that'> False
```

Well. This is just an example, you can do a lot more, as test scenarios backed by Sparrow engine:

* [write tests](https://github.com/melezhik/Sparrow6/blob/master/documentation/development.md) on Raku instead of Bash
* use more [sophisticated constructions](https://github.com/melezhik/Sparrow6/blob/master/documentation/taskchecks.md) to verify scripts output


## Run test from suite

To run test from suite:

Either run all tests:

```
tomty --all 
```

Or only this test:

```
tomty 123
```
