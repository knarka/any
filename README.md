# any
any is a tool to use any terminal-based texteditor, to edit text anywhere.

any opens a new terminal with your editor, in which you can edit text like you're used to, and copies the result to your clipboard after you finish, so you can paste it in the appropriate textfield.

If you pass the `-p` flag, any will paste your current clipboard contents to the new file first, so you can edit them in your text editor.

## usage
At the top of `any.pl` there are two variables, defining the terminal and text editor to use. Edit these as you wish.
It is recommended to bind any to some key. I personally use super+e for `any`, and super+shift+e for `any -p`.

## dependencies
You're going to need to have `xclip` installed. There's a very good chance your package manager provides it.
