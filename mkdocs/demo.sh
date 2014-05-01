clear
echo 'Write the docs demo'
read
clear

echo 'Create a new markdown file...'
read
cd demo
curl 'jaspervdj.be/lorem-markdownum/markdown.txt' > ~/Downloads/about.md
cp ~/Downloads/about.md docs/about.md
clear
echo "...done"
read

echo 'Create two markdown files in a folder...'
read
mkdir docs/user-guide/
curl 'jaspervdj.be/lorem-markdownum/markdown.txt' > ~/Downloads/getting-started.md
cp ~/Downloads/getting-started.md docs/user-guide/getting-started.md
sleep 0.5
curl 'jaspervdj.be/lorem-markdownum/markdown.txt' > ~/Downloads/configuration.md
cp ~/Downloads/configuration.md docs/user-guide/configuration.md
clear
echo "...done"
read

echo "Add the pages to the 'mkdocs.yml' config..."
read
echo "pages:" >> mkdocs.yml
echo "- index.md" >> mkdocs.yml
echo "- user-guide/getting-started.md" >> mkdocs.yml
echo "- user-guide/configuration.md" >> mkdocs.yml
echo "- about.md" >> mkdocs.yml
clear
echo "...done"
read

echo "Push our documentation source to github..."
read
git init
echo "site/" > .gitignore
git add .
git commit -m "MkDocs demo"
git remote add origin git@github.com:tomchristie/demo.git
#git remote add origin https://github.com/tomchristie/zzz.git
git push -u origin master
clear
echo "...done"
