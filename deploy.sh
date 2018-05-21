cd /var/www/html/hrmsui;
git pull origin development;
rm -Rf dist;
ng build --prod;
zip -r dist.zip dist;
scp dist.zip thoudam@refixd.com:/home/thoudam/uploads/
ssh -t thoudam@refixd.com "cd ~/uploads/; unzip dist.zip;rm -Rf /home/thoudam/public_html/admin; mv dist /home/thoudam/public_html/admin; cd /home/thoudam/public_html/api/; git pull origin development;php artisan migrate"
