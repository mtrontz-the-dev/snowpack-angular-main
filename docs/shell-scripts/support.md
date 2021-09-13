# General Bash Scripting Info 
https://www.programming-books.io/essential/bash/
https://linuxhint.com/30_bash_script_examples/
https://tldp.org/LDP/abs/html/internalvariables.html
https://www.gnu.org/software/bash/manual/bash.html

# How To Check If a Directory or File Exists, In a Shell Script
https://www.cyberciti.biz/faq/howto-check-if-a-directory-exists-in-a-bash-shellscript/

https://devconnected.com/how-to-check-if-file-or-directory-exists-in-bash/

## Example 
``` bash
if [[ ! -f <file> ]]
then
    echo "<file> does not exist on your filesystem."
fi
```
Similarly, you can use shorter forms if you want to quickly check if a file does not exist directly in your terminal.
``` bash
[[ ! -f <file> ]] && echo "This file does not exist!"

[ ! -f <file> ] && echo "This file does not exist!"
```
# how to exit bash editor after git commit
After writing commit message, just press Esc Button and then write :wq or :wq! and then Enter to close the unix file.

[Source-Stack Overflow](https://stackoverflow.com/questions/13239368/git-how-to-close-commit-editor/28343418#:~:text=After%20writing%20commit%20message%2C%20just,to%20close%20the%20unix%20file.)