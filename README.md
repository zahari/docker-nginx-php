nginx-php-fpm
==============


Sample docker image to test PHP web applications


Usage
-----

To create the image `zahari/nginx-php`, execute the following command on the nginx-php-fpm folder:

	docker build -t nginx-php .


Running your Nginx PHP Docker image
-------------------------------------

Start your image as a deamon:

	docker run -d -p 80:80 -v $(pwd)/www:/www zahari/nginx-php

or interactively:

	docker run -it --rm  -p 80:80 -v $(pwd)/www:/www zahari/nginx-php

Test your deployment:

	curl http://localhost/
