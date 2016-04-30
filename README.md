# swift-build-scripts
Bash scripts for building [Swift](https://github.com/apple/swift) on Linux/ARM

## status

none of this is working yet.  best stay away for now.

## usage

download these scripts:

```bash
mkdir -p ~/github/cellularmitosis
cd ~/github/cellularmitosis
git clone https://github.com/cellularmitosis/swift-build-scripts
```

create a temp directory somewhere and run the `go` script from that directory:

```bash
mkdir -p ~/swift-builds/1
cd ~/swift-builds/1
~/github/cellularmitosis/swift-build-scripts/arm/go-swift-2.2.1-RELEASE.sh
```

see also [awesome-swift-arm](https://github.com/cellularmitosis/awesome-swift-arm).

## results log

see [results.md](/results.md)
