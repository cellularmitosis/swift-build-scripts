# swift-build-scripts
Bash scripts for building Swift on Linux/ARM

## status

none of this is working yet.  best stay away for now.

## usage

download these scripts:

```bash
mkdir -p ~/github/cellularmitosis
cd ~/github/cellularmitosis
git clone https://github.com/cellularmitosis/swift-build-scripts
```

run the fetch.sh script to fetch all of the tarballs according to the versions in shas.bash.

```bash
~/github/cellularmitosis/swift-build-scripts/arm/fetch-2.2.sh
```

create a temp directory somewhere and run the build script from that directory.

```bash
mkdir -p ~/swift-builds/1
cd ~/swift-builds/1
~/github/cellularmitosis/swift-build-scripts/arm/build-2.2.sh
```
