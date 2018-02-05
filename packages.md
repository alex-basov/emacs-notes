~/.emacs file and Packages
==========================

Emacs is very versatile, you can program it, and add new abilities. Let's say that we
develop a new language that Emacs does not know about. All we have to do is to write
a "package" so that Emacs can color-code it for example. Or even write a package for
Emacs to auto-complete keywords in this language. This makes Emacs a platform for editing
many different thingsa. 

`~/.emacs` file (A file called ".emacs" under your home directory) holds all the elisp
statements that is run when you start your Emacs. 
`~/.emacs.d` directory (A directory called ".emacs.d" under your home directory) holds
all the packages (files of lisp commands/statements) for Emacs.

You load a package by refering it in a "require" statement. 

[Auto-complete link](https://github.com/auto-complete/auto-complete)

Auto-complete is available on MELPA and MELPA-STABLE

Install auto-complete with the following command.

`M-x package-install [RET] auto-complete [RET]`

For auto complete works once we add these two lines to our ~/.emacs file
=======
For this example, we have already downloaded a package called "auto-complete" and put it
under `~/.emacs.d.` Now let's add a line in `~/.emacs` file so that it will start every time.

Auto complete
-------------

```
(require 'auto-complete)
    (global-auto-complete-mode t)
```

And then, we save .emacs file, and restart Emacs. auto-complete should be on for everything.

We can also add the following line to `~/.emacs` file so that C-c j becomes M-x goto-line each
time Emacs starts:

```
(global-set-key (kbd "C-c j") 'goto-line)
```

For your reference, M-x goto-line goes to a line!

Recent Files
------------
Recentf is a minor mode that builds a list of recently opened files. It is saved
automatically on exiting Emacs.

```
(recentf-mode 1)
(setq recent-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
```

Modes
=====

Markdown-mode
-------------
You need MELPA Stable installed

`M-x package-install RET markdown-mode RET`


Impatient Mode
--------------
See the effect of your HTML as you type it.
 * [YouTube demo](http://youtu.be/QV6XVyXjBO8)
 * [Readme](https://github.com/skeeto/impatient-mode)



```
(add-to-list 'load-path "~/.emacs.d/impatient-mode")
    (require 'impatient-mode)
```

Using _impatient-mode_

Enable the web server provided by _simple-httpd_:

```
M-x httpd-start
```

Publish buffers by enabling the minor mode `impatient-mode`.

```
M-x impatient-mode
```

Emmet-mode
----------
[emmet-mode link](https://github.com/smihica/emmet-mode)

Install from MELPA:

`M-x package-list-packages` search for `emmet-mode`

To add it to auto-load on your sgml modes:

```
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
```





