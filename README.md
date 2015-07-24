# loginext-assgnmt

Instructions to run the project:

- Clone under your local server path e.g. http://localhost/loginext-assgnmt/
- Under the /upload/db folder, you should find the db. Import it to the the local mysql db.
- Edit the config.php under the upload folder to reflect your db credentials and db name.
- To generate random 2500 pincodes, call -  localhost/upload/index.php?route=common/home/autogenerate
Table: loginext (pincode, rating)
- Function: autogenerate Location: catalog/model/catalog/product.php (Empty the existing table and change the range to generate desired number of results/pins)
- Graph plotted via top 10 rated pincodes returned from this db as a json which is plotted using Chart.js
http://localhost/loginext-assgnmt/index.php?route=common/home/graph
