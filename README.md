# helm-vendor-plugin
A Helm Plugin to download all dependencies and vendor them by extracting the `.tgz` distribution files.

## Install
```bash
helm plugin install https://github.com/SecKatie/helm-vendor-plugin
```

## Usage
```bash
helm vendor
```

## Testing
```bash
git clone git@github.com:SecKatie/helm-vendor-plugin.git
# or
git clone https://github.com/SecKatie/helm-vendor-plugin.git

cd helm-vendor-plugin
make test
```