git grep -p --color -n -E "$(grep -v ^# thread-check.txt  | sed 's/(.*/\\\\ *\\\\(/' | xargs | tr ' ' '|')" \
    apt-inst/ apt-pkg/  | ansi2html  | ssh alioth.debian.org 'cat > /home/groups/apt/htdocs/not-thread-safe/index.html'
git grep -p --color -n -E "$(grep ^# thread-check.txt  | cut -f2 -d# | sed 's/(.*/\\\\ *\\\\(/' | xargs | tr ' ' '|')" \
    apt-inst/ apt-pkg/  | ansi2html  | ssh alioth.debian.org 'cat > /home/groups/apt/htdocs/not-thread-safe/portable.html'

git grep -p --color -n -E "$(grep -v ^# thread-check-internal.txt  | sed 's/(.*/\\\\ *\\\\(/' | xargs | tr ' ' '|')" \
    apt-inst/ apt-pkg/  | ansi2html  | ssh alioth.debian.org 'cat > /home/groups/apt/htdocs/not-thread-safe/internal.html'
