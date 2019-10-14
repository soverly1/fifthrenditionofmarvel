#MakeFile to build and deploy the Sample US CENSUS Name Data using ajax
# For CSC3004 Software Development

# Put your user name below:
USER=overly1

all: PutCGI PutHTML

PutCGI:
	chmod 757 search.py
	cp search.py /usr/lib/cgi-bin/$(USER)_search.py

	echo "Current contents of your cgi-bin directory: "
	ls -l /usr/lib/cgi-bin/

PutHTML:
	cp marvelsearch.html /var/www/html/class/softdev/$(USER)/python/
	cp search.css /var/www/html/class/softdev/$(USER)/python/
	cp search.js /var/www/html/class/softdev/$(USER)/python/

	echo "Current contents of your HTML directory: "
	ls -l /var/www/html/class/softdev/$(USER)/python/
