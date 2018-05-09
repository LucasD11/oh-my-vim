Oh My VIM
=========

Build up your vim environment quick and easy.

Besides, *Oh-My-VIM* can be installed in less than 1 minutes.

Features
--------

- *neocomplcache*: Autocomplete code. Which is almost the same as YouCompleteMe but much faster.

- *CtrlP*: File browser inside vim by <F3>.

- Python code check inside vim by <F7> (<F8> to hide).

- **Auto Run**: Auto run python code by <F5>.

- *indentLine*: See code clearly.

- *vim-airline*: Colorful status line.

- ... Almost anything you want.

- **Quick Boot**: With all these features, vim can boot within 1 second!!

Install
-------

.. code:: shell

   sh -c "$(wget https://raw.githubusercontent.com/crazydyz/oh-my-vim/master/tools/install.sh -O -)"

Uninstall
---------

.. code:: shell

   sh -c "$(wget https://raw.githubusercontent.com/crazydyz/oh-my-vim/master/tools/uninstall.sh -O -)"

Requirements
------------

- VIM 8.0+ is required.
- +python feature is required for some python plugin. You can check that by typing ::

  vim --version | grep python

- Pylint is required 
