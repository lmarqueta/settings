# Common settings

## Vim

  * My usual `.vimrc` file. It doesn't change a lot over time.

## mutt

`.muttrc` file. Sometimes I use several different files:

  * A `~/.mutt/common.muttrc` file with common settings
  * Different files with account specific information (server address, account name, passwords, etc)
    * `~/.mutt/account1.muttrc`
    * `~/.mutt/account2.muttrc`
  * Different .muttrc.accountX files load the appropriate files, for instance:
    * `mutt -F personal.muttrc`
    * `mutt -F work.muttrc`
    * Default `.muttrc` may be like this:
      ```
      source ~/.mutt/common.muttrc
      source ~/.mutt/personal.muttrc
      ```

