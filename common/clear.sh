#!/bin/bash

function clear {
	perl -p -i -e "s/\r//g" $1;
}

clear "common/dotfiles.sh"
clear "common/functions.sh"

clear "git/.gitconfig"
clear "git/.gitignore"

clear "linux/apps.sh"
clear "linux/system.sh"

clear "node/global.sh"

clear "system/.bash_aliases"
clear "system/.inputrc"

clear ".editorconfig"

# END
