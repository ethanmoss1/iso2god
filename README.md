# iso2god-rs
Original by https://github.com/iliazeus. 
Rewritten in rust by https://github.com/iliazeus.
Nix flake added by https://github.com/ethanmoss1

A tool to convert Xbox 360 and original Xbox ISOs into an Xbox 360 compatible Games-On-Demand file format

This is an optimized rewrite of https://github.com/eliecharra/iso2god-cli, with a few extra features.

```
Usage: iso2god [OPTIONS]  

Arguments:
    ISO file to convert
      A folder to write resulting GOD files to

Options:
      --dry-run             Do not convert anything, just print the title info
      --game-title   Set game title
      --trim                Trim off unused space from the ISO image
  -j, --num-threads <N>     Number of worker threads to use
  -h, --help                Print help
  -V, --version             Print version
```

