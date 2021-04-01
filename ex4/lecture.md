Learn C The Hard Way
=======

Exercise 4
----

Using a Debugger



The Plan
====

* See how GDB works (LLDB on OSX).
* Look at memory checkers like Valgrind and AddressSanitizer.
* Cover the quick reference.
* Debug a program.



Using GDB
====
gdb --args
Normally, gdb takes arguments you give it and assumes they are for itself.
Using --args passes them to the program.

thread apply all bt
Dump a backtrace for all threads. It’s very useful.

gdb --batch --ex r --ex bt --ex q --args
Run the program so that if it bombs, you get a backtrace.

run [args]
Start your program with [args].

break [file:]function
Set a break point at [file:]function. You can also use b.”

backtrace
Dump a backtrace of the current calling stack. Shorthand is bt.

print expr
Print the value of expr. Shorthand is p.

continue
Continue running the program. Shorthand is c.

next
Next line, but step over function calls. Shorthand is n.

step
Next line, but step into function calls. Shorthand is s.

quit
Exit GDB.

help
List the types of commands. You can then get help on the class of command as well as the command.

cd, pwd, make
This is just like running these commands in your shell.

shell
Quickly start a shell so you can do other things.

clear
Clear a breakpoint.

info break, info watch
Show information about breakpoints and watchpoints.

attach pid
Attach to a running process so you can debug it.

detach
Detach from the process.

list
List out the next ten source lines. Add a - to list the previous ten lines.


Using LLDB
====
run [args]
Start your program with [args].

breakpoint set - -name [file:]function
Set a break point at [file:]function. You can also use b, which is way easier.

thread backtrace
Dump a backtrace of the current calling stack. Shorthand is bt.

print expr
Print the value of expr. Shorthand is p.

continue
Continue running the program. Shorthand is c.

next
Next line, but step over function calls. Shorthand is n.

step
Next line, but step into function calls. Shorthand is s.

quit
Exit LLDB.

help List the types of commands.
You can then get help on the class of command as well as the command itself.

cd, pwd, make
Just like running these commands in your shell.

shell
Quickly start a shell so you can do other things.

clear
Clear a breakpoint.

info break, info watch
Show information about breakpoints and watchpoints.

attach -p pid
Attach to a running process so you can debug it.

detach
Detach from the process.

list
List out the next ten source lines. Add a - to list the previous ten sources.

Using Valgrind
====



Using Lint
====



Using AddressSanitizer
====

You neeed clang for this.



"The Debugger"
====

When I say "the debugger" in the book I mean to use GDB, but use
every tool you can find that helps.



End Of Lecture 4
=====
