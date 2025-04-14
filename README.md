# Quick rebuilding of the waldur-mastermind docker container

First, go into the `waldur-mastermind` directory and build the `waldur-mastermind` container properly, e.g.

```bash
cd ../waldur-mastermind
docker build -t chryswoods/waldur-mastermind:base .
cd ../quick_waldur_mastermind
```

(this assumes the `waldur-mastermind` directory is in the same directory as this repo)

This has built a docker container called `chryswoods/waldur-mastermind:base`.

This repo uses container as the base which is overwritten by the docker build from this directory.

To build the proper container use

```bash
rm -rf src && cp -a ../waldur-mastermind/src . && docker build -t chryswoods/waldur-mastermind:7.4.8 .
```



