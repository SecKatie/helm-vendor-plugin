# helm-vendor-plugin
A Helm Plugin to download all dependencies and vendor them by extracting the `.tgz` distribution files.

## Prerequisites

- [Helm](https://helm.sh/docs/intro/install/)
- [yq](https://github.com/mikefarah/yq/#install) (for testing and development)

## Install Plugin
```bash
helm plugin install https://github.com/SecKatie/helm-vendor-plugin
```

## Usage
```bash
helm vendor
```

## Update Plugin
```bash
helm plugin update vendor
```

## Uninstall Plugin
```bash
helm plugin remove vendor
```

## Testing and Development
```bash
git clone git@github.com:SecKatie/helm-vendor-plugin.git
# or
git clone https://github.com/SecKatie/helm-vendor-plugin.git

cd helm-vendor-plugin
make test
```

## Next Steps
- [ ] Add a version flag to the `helm vendor` command
- [ ] Capture the `--help` flag and provide `helm vendor` usage information