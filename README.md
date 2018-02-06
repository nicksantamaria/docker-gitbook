# gitbook

Docker container for running `gitbook` node static site generator.

## Install

```sh
docker pull nicksantamaria/gitbook
```

Docker Hub: <https://hub.docker.com/r/nicksantamaria/gitbook/>

## Usage

If your current directory is not your gitbook project, you can replace `$(pwd)` with the path.

### Build Gitbook

```
docker run --rm -v $(pwd):/data nicksantamaria/gitbook build
```

### Serve Gitbook

```
docker run --rm -v $(pwd):/data -p 4000:4000 -p 35729:35729 nicksantamaria/gitbook build
```

## License

[![License](https://img.shields.io/github/license/nicksantamaria/docker-gitbook.svg)](https://github.com/nicksantamaria/docker-gitbook/blob/master/LICENSE)

This repository is inspired by [yanqd0/docker-gitbook].
