cp -r ../web-main-website/build/* . 
rm test*.html 
git add . 
git commit -m "deploy to gh-pages" 
git push origin gh-pages
