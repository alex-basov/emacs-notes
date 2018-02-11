Dired Shortcuts
--------------------
--------------------

Entering and Exiting Dired
--------------------------

run dired                           `C-x d`

quit dired                          `q`

Motion Commands
---------------

move up to previous line            `p` 

move down to next line              `n` 

move up to previous directory line  `<` 

move down to next directory line    `>` 

move to next marked file            `M-}` 

move to previous marked file        `M-{` 

move up to previous subdirectory    `M-C-p` 

move down to next subdirectory      `M-C-n` 

move to parent directory            `^` 

move to first child subdirectory    `M-C-d` 

Immediate Actions on Files
--------------------------

visit current file                             `f`

view current file                              `v`

visit current file in other window             `o`

create a new subdirectory                      `+`

compare file at point with the one at mark     `=`

Marking and Unmarking Files
---------------------------

mark a file or subdirectory for later commands `m`

unmark a file or all files of a subdirectory   `u`

unmark all marked files in a buffer            `M-delete`

mark files with a given extension              `* .`

mark all directories                           `* /`

mark all symlinks                              `* @`

mark all executables                           `* *`

invert marking                                 `t`

mark all files in the current subdir           `* s`

mark file names matching a regular expr.       `* %`

change the marks to a different character      `* c`

Modifying the Dired Buffer
--------------------------

insert a subdirectory into this buffer         `i`

remove marked files from the listing           `k`

remove a subdir listing                        `C-u k`

re-read all directories (retains all marks)    `g`

toggle sorting of current subdir by name/date  `s`

edit ls switches                               `C-u s`

recover marks, hidden lines, and such (undo)   `C-_`

hide all subdirectories                        `M-$`

hide or unhide subdirectory                    `$`

Commands on Files Marked or Specified by the Prefix
---------------------------------------------------

copy file(s)                                     `C`

rename a file or move files to another directory `R`

change ownership of file(s)                      `O`

change the group of the file(s)                  `G`

change mode of file(s)                           `M`

print file(s)                                    `P`

convert filename(s) to lower case                `% l`

convert filename(s) to upper case                `% u`

delete marked (as opposed to flagged) file(s)    `D`

compress or uncompress file(s)                   `Z`

make symbolic link(s)                            `S`

make relative symbolic link(s)                   `Y`

make hard link(s)                                `H`

search files for a regular expression            `A`

regexp query replace on marked files             `Q`

byte-compile file(s)                             `B`

load file(s)                                     `L`

shell command on file(s)                         `!`

asynchronous shell command on file(s)            `&`

Flagging Files for Deletion
---------------------------

flag file for deletion                           `d`

flag all backup files (file names ending in ˜)   `~`

flag all auto-save files                         `#`

flag various intermediate files                  `% &`

flag numeric backups (ending in .˜1˜, .˜2˜, etc.) `.`

execute the deletions requested (flagged files)  `x`

flag files matching a regular expression         `% d`

Regular Expression Commands
---------------------------

mark filenames matching a regular expression     `% m`

copy marked files by regexp                      `% C`

rename marked files by regexp                    `% R`

hardlink                                         `% H`

symlink                                          `% S`

symlink, with relative paths                     `% Y`

mark for deletion                                `% d`

Dired and Find
--------------

dired file(s) whose name matches a pattern   `M-x find-name-dired`

dired file(s) that contain pattern           `M-x find-grep-dired`

dired file(s) based on find output           `M-x find-dired`

Getting Help
------------

dired help                                   `h`

dired summary (short help) and error log     `?`
