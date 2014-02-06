<<<<<<< HEAD
Clone to ~/.yarvm (location is not imprtant)

Symlink rvm and rbenv to expected locations:

    ln -s .yarvm/.rvm .rvm
    ln -s .yarvm/.rbenv .rbenv

Source either ~/.rvm/libexec/_profile or ~/.rbenv/libexec/_profile (bash
only).

=======
Build this with a clean VM every time, with a clean root user

For global installs from scratch:

    make binary

For global installs from archives:

    make install
>>>>>>> build/master
