
## Build

```
docker-compose build pasopa
```

## Tag (alias)

```
docker tag docker.pkg.github.com/bsorrentino/powerapps-language-tooling-build/pasopa:0.18 <pasopa image>:0.18
```

## Usage

```
docker run --rm -i -v$(pwd):/app -t <pasopa image>:0.18 -unpack app/<app file>.msapp
```

## References

* [https://github.com/microsoft/PowerApps-Language-Tooling]
* [https://docs.docker.com/engine/examples/dotnetcore/]
