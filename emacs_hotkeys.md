Commands:
--------------
`C-x C-f` : Opens a file, asks for the file name. If it cannot find the file, creates the file

`C-x C-s` : Saves the file without a prompt

`C-x s`   : Saves all files with a prompt  

`C-s C-w` : Saves the file with a different name. Asks you for the name.

Everytime you save a file, Emacs creates another file with the name "filename~".
This tilde(~) file is the previous version of the file. It will be in the same dir.
Also, Emacs auto-saves everything you type to a file with the name "#filename#".
If you quit Emacs without saving, you can see this auto-save file. Let's do that.

`C-x C-c` : Quits Emacs.

`M-x recover-file`: recovers the auto-saved file.


Copy/Cut/Paste Commands:
------------------------

Pastes whatever is in the clipboard at the cursor. 

Subsequent `C-y`'s will keep on pasting                    `C-y`

Starts marking/highligting a region                        `C-space`

Kills/deletes the whole line, puts it into the clipboard   `C-k`

Kills the whole line. The same as `M-x kill-whole-line`  `C-S-Backspace`

Copies this region into the clipboard                      `M-w`

Cuts this region into the clipboard 
(deletes the region and copies it to clipbrd)              `C-w`

Saving a region involves hitting C-space to start selecting, and then hitting M-w or C-w to
copy or cut it into the clipboard, and then hitting C-y to paste it. 
If you dont like the region you are selecting, hit C-g.

`C-g`     : Always quits your command.


Cursor Commands:
----------------

`C-a`     : Beginning of line

`C-e`     : End of line

`M->`     : End of buffer

`M-<`     : Beginning of buffer

`C-/`     : Undo

`C-g C-/` : Redo


Buffer Management Commands:
---------------------------

`C-x b`   : Switches buffers, asks you which buffer to switch to.

`C-x C-b` : Switches buffers, but shows you the list of buffers in a new window

Hit C-x o (other window) to go the other window and hit <enter> on the buffer you want to
switch to.

`C-x 0`   : Will close that window

`C-x 1`   : Will leave only one window

`C-x 2`   : Will make a horizontal cut and show a secondary window

`C-x 3`   : Will make a vertical cut and show a secondary window

Search Commands

`C-s`	   : Searches forward as you type. Beware \n is not new line, it is C-j
	     When you are within a search, C-s will find the next occurance.

You can always hit C-g to quit the search and return where you were.

`M-C-s`   : searches a regexp
	     [0-2] : searches between numbers between 0 and 2

Again, hitting C-s while you are in regexp search will find the next occurance.

`C-g` will quit and  go back to where your cursor was.

`M-%`	   : searches and replaces.
	
	`y` - to replace
	
    `!` - to replace them all

`M-s o`   : searches and shows all the occurances in an *Occur* buffer. You can
    	     click on the lines to jump to those line.

`M-x grep`: greps a pattern in the files you specify and shows the results in a *Grep*
    	     buffer. It is similar to "occur" as you can click/enter on the lines to go
	     to that file.
	     grep -nH -e "is" my_dir/*.txt

`M-x rgrep`: will recursively grep in a directory (all the files and subdirectories)


Commands:
---------
Emacs understands elisp. It is a dialect of lisp.

`M-x` command-name : Will execute the command. 

`M-x pwd`  : Prints the working directory

`M-x indent-region` : Indents the region.

Hit `M-x` and type anything and hit TAB to auto-complete the commands (or to see the available
commands. )

You can hit `M-:` to go to the evaluate buffer where you can evaluate a lisp statement.
For example, "setq" sets a variable to a value. 

With `C-h v`, you can see the value of a variable.

You can also use `C-x C-e` to evaluate (i.e. run) a lisp statement at the cursor.
(setq your_var '124)
your_var my_var
