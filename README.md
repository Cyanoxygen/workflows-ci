workflow-ci
--------

This repository holds various configurations and scripts related to the Workflows CI, which updates, builds and tests a selected set of packages with certain interval.

Requirements
--------

- [ciel](https://github.com/AOSC-Dev/ciel-rs) (AOSC container manager)
- `script` utility (to capture the output of Ciel container, with PTY support)
- `rsync` and `pushpkg` (to automatically push the packages)
- `aosc-findupdate` (to check updates)
