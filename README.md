# Quick start Rust with a vim container

Fast and portable way to get started with rust using suped up vim IDE and zsh (both setup  with good base settings and plugin)  in a docker container.  No assembly required - the only dependencies are [docker and docker-compose](https://docs.docker.com/compose/install/) which need be installed on your local machine.

## Getting started with Rust with suped up vim + zsh in container

After pulling [the repository](https://github.com/jermwatt/vsc_rust_docker/tree/vim_zsh) , cd into and spinup the compose file by typing

```docker-compose up -d```

Running this the first time will build  the associated docker image.

Once the compose spinup process is complete type

```docker container exec -u 0 -it vim_rust bash```

to enter the container.


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
