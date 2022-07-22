# vsc_rust_docker

Fast and portable way to get started with rust using Visual Studio Code IDE in the browser via a simple docker pattern.  No assembly required - the only dependencies are a browser of your choice and having [docker and docker-compose](https://docs.docker.com/compose/install/) installed on your local machine.

A similar but different pattern that keeps rust in a separate container using a docker-in-docker pattern can be found [in this branch](https://github.com/jermwatt/vsc_rust_docker/tree/docker-in-docker).

Alternatively, if you a simple but powerful vim setup can be found [in this branch](https://github.com/jermwatt/vsc_rust_docker/tree/vim_zsh).

## Getting started with VSC in browser

After pulling [the repository](https://github.com/jermwatt/vsc_rust_docker), cd into and spinup the compose file by typing

```docker-compose up -d```

Running this the first time will pull the associated docker image.

Once the compose spinup process is complete, open your browser of choice and type the following into the address bar

```http://localhost:8080```

This will open up password prompt to enter your VSC container in the browser.  The starting password is 

```temp_pass```

You should adjust this password in 

```/vsc_rust_docker/vsc_ide/configs/code-server/config.yaml```

Any installed VSC extensions you install can be found locally on your machine at

```/vsc_rust_docker/vsc_ide/extensions```

Any Rust projects you create in VSC will also be stored locally at 

```/vsc_rust_docker/vsc_ide/app/rust_projects```



### Getting started with Rust 

Open a terminal in VSC, and cd to the `/projects` directory.  This directory contains the primary Rust docker-compose file.

To start a new test rust project cd into the `/projects` and type

`cargo new hello_world`

After the binary for this test project is completed, cd into the new `hello_world` directory and type

`cargo run`

to compile and run the project's binary.  You should see successful result

```
   Compiling hello_world v0.1.0 (/projects/hello_world)
    Finished dev [unoptimized + debuginfo] target(s) in 7.02s
     Running `target/debug/hello_world`
```
