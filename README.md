# How to use

Download a release or clone this repo somewhere. There's a `src/` dir where you can place your sources.

Modify `Dockerfile` as needed for your particular project.

Build the container:
> $ docker build -t <container_tag> .

Start a container in the background:
> $ docker run -d -it -v <path_to_src_dir>:/home/dev/project --name <some_name> <container_tag> /bin/bash

Attach to the container:
> $ docker exec -it -u dev <some_name> /bin/bash

