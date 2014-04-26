git checkout gh-pages
git merge master -m"Merge master"
muffin minify
git add -f public
git add -u public
git commit -m"Commit for deployment"
git subtree push --prefix public origin gh-pages
git checkout master
