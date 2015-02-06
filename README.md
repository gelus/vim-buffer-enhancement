vim-buffer-enhancement
======================

A small buffer enhancement for vim, enabling the "Re-ordering" of buffers

------------------------------------------------------------------------

Managing files with buffers is great! Once you get the hang of mentally keeping track of buffer numbers vim makes switching between them as simples as ```3<C-^>```!

Unfortunately buffer numbers get pretty long. I myself find it annoying when I can't hit a buffer number with just my left hand.

The solution to this would be to re-assign your buffer numbers, so you have the files you're working on right where you want them.
Sadly, Vim does not allow one to re-number the buffers.

Fortunatly, there is a buffer enhancement!

The buffer enhancement plugin maintains all the buffer switching funcationality you've come to know and love with vim and improves it by giving you the ability "re-order" your buffers.

install
-------

place plugin/buffer-enhancement.vim file in your .vim/plugin directory

####Pathogen:

clone into your bundle directory
```
cd .vim/bundle && git clone https://github.com/gelus/vim-buffer-enhancement.git
```

use
---

To assign a new number to your buffer, ( more accurately, to add a mapping for a buffer ) you may use:
```
<count><leader><C-6>
```
This will assign the current buffer to whatever was count.
you can then access that buffer just as you would if it had the buffer number you assigned
```
<count><C-6>
```

