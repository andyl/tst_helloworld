# tst_helloworld

Simple Dockerized Hello World Webapp

To run directly:

    ruby app.rb
    curl localhost:4567

To build the Docker image:

    docker build -t lcl_hello .    

To run the docker image:
    
    docker run -p 3090:3090 lcl_hello



To run standalone

    docker run -p 3090:3090 casmacc/sinatra_helloworld

To run with `nginx_proxy`

    docker run -p 3090:3090 -e VIRTUAL_HOST=ding.dong casmacc/sinatra_helloworld

Have a look at the [github source][1] to learn more about `nginx_proxy`.

[1]: https://github.com/casmacc/nginx_proxy

