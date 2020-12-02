# 个人开发容器

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/alvisisme/dev-container/Build%20and%20push%20docker%20images?label=GitHub%20Actions)
![Docker Pulls](https://img.shields.io/docker/pulls/alvisisme/dev-container)
[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg)](https://github.com/RichardLitt/standard-readme)

Personal development container.

* [alvisisme/dev-container:base](./containers/base/README.md)
* [alvisisme/dev-container:c](./containers/c/README.md)
* [alvisisme/dev-container:java](./containers/java/README.md)
* [alvisisme/dev-container:node](./containers/node/README.md)
* [alvisisme/dev-container:python](./containers/python/README.md)

## 目录

* [Install](#Install)
* [Usage](#Usage)
* [Maintainers](#maintainers)
* [Contributing](#contributing)
* [License](#license)

## Install

```bash
docker pull alvisisme/dev-container:base
docker pull alvisisme/dev-container:node
...
```

## Usage

```bash
docker run -it alvisisme/dev-container:base
docker run -it alvisisme/dev-container:node
...
```

## Maintainers

[@Alvis Zhao](https://github.com/alvisisme)

## Contributing

Small note: If editing the README, please conform to
the [standard-readme](https://github.com/RichardLitt/standard-readme) specification.

## License

MIT © 2020 Alvis Zhao
