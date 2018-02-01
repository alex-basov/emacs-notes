~/.emacs file and Packages
==========================

Emacs is very versatile, you can program it, and add new abilities. Let's say that we
develop a new language that Emacs does not know about. All we have to do is to write
a "package" so that Emacs can color-code it for example. Or even write a package for
Emacs to auto-complete keywords in this language. This makes Emacs a platform for editing
many different things. 

~/.emacs file (A file called ".emacs" under your home directory) holds all the elisp
statements that is run when you start your Emacs. 
-~/.emacs.d directory (A directory called ".emacs.d" under your home directory) holds
all the packages (files of lisp commands/statements) for Emacs.

You load a package by refering it in a "require" statement. 

For this example, I already have downloaded a package called "auto-complete" and put it
under ~/.emacs.d. I will now add a line in ~/.emacs file so that it will start every time.
Let's first test it.
whi?? no autocomplete


Auto complete
=============

for auto complete works once we add these two lines to our ~/.emacs file
```
(require 'auto-complete)
    (global-auto-complete-mode t)
```

And then, we save .emacs file, and restart Emacs. auto-complete should be on for everything.

We can also add the following line to ~/.emacs file so that C-c j becomes M-x goto-line each
time Emacs starts:

```
(global-set-key (kbd "C-c j") 'goto-line)
```

For your reference, M-x goto-line goes to a line!


Impatient Mode
==============
See the effect of your HTML as you type it.
 * [YouTube demo](http://youtu.be/QV6XVyXjBO8)
 * [Readme](https://github.com/skeeto/impatient-mode)



```
(add-to-list 'load-path "~/.emacs.d/impatient-mode")
    (require 'impatient-mode)
```

Using _impatient-mode_
----------------------

Enable the web server provided by _simple-httpd_:

```el
M-x httpd-start
```

Publish buffers by enabling the minor mode `impatient-mode`.

```
M-x impatient-mode
```
