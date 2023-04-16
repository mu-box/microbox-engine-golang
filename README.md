# Go

This is a Go engine used to launch Go apps on [Microbox](http://microbox.cloud).

## Usage
To use the Go engine, specify `golang` as your `engine` in your boxfile.yml.

```yaml
run.config:
  engine: golang
```

## Build Process
When [building your runtime](https://docs.microbox.cloud/cli/build-runtime), this engine compiles code by doing the following:

```
> go get
> go build
```

*These commands can be modified using the [fetch](#fetch) and [build](#build) config options*

## Configuration Options
This engine exposes configuration options through the [boxfile.yml](https://docs.microbox.cloud/boxfile), a yaml config file used to provision and configure your app's infrastructure when using Microbox. This engine makes the following options available.

#### Overview of Boxfile Configuration Options
```yaml
run.config:
  engine: golang
  engine.config:
    # Go Settings
    runtime: go-1.8
    package: 'github.com/username/code'
    fetch: 'go get'
    build: 'go build'
```

---

#### runtime
Specifies which Golang runtime to use. The following runtimes are available:

- go-1.4
- go-1.5
- go-1.6
- go-1.7
- go-1.8 *(default)*
- go-1.9

```yaml
run.config:
  engine: golang
  engine.config:
    runtime: go-1.8
```

---

#### package *(required)*
Specifies the path to the directory in which your code is stored. This can be a local or remote directory.

```yaml
run.config:
  engine: golang
  engine.config:
    package: 'github.com/username/code'
```

---

#### fetch
Defines the command to run to load dependencies in the build process.

```yaml
run.config:
  engine: golang
  engine.config:
    fetch: 'go get'
```

---

#### build
Defines the command to run to compile your code in the build process.

```yaml
run.config:
  engine: golang
  engine.config:
    build: 'go build'
```

---

## TODO
- Make cleanup function `uninstall_build_dependencies`

## Help & Support
This is a Go engine provided by [Microbox](http://microbox.cloud). If you are running into an issue with the engine, feel free to [create a new issue on this project](https://github.com/mu-box/microbox-engine-golang/issues/new).
