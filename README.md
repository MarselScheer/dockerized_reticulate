# dockerized_reticulate
Docker-container for starting with reticulate

	./build.sh image_name
	./start.sh image_name

Afterwards RStudio (WITHOUT AUTHENTICATION) should be available under

	localhost:8787
	
For instance try in the R-console

	library(reticulate)
	py_discover_config()
	os <- import("os")
	os$listdir(".")


