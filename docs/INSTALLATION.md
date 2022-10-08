# Installation

## Windows Users

Please install [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install) and see the next section.

## Linux / mac Users

### Installing with brew

This is the easiest way to install Chapel. It will give you a basic working installation. This is enough for Exercism, but it has a few limitations, for example it does not support multi-locale. More advanced users may want to build Chapel from source code (next section).

If you haven't already, install the [brew](https://brew.sh/) package manager.

1. First, make sure brew is up-to-date by running `brew update`
2. Install Chapel by running `brew install chapel`
3. Verify the installation was successful by running `chpl --version`

This will install the chapel compiler (`chpl`), the package manager `mason`, that we will use to run the tests, and the documentation generation tool `chpldoc`, this is not needed for exercism, but it is good to have if (when :) ) you want to develop your own libraries in Chapel.

### Building Chapel from source code

More advanced users may want to build Chapel from the source code themselves. To do so,

1. Install the [prerequisites](https://chapel-lang.org/docs/usingchapel/prereqs.html)
2. [Download](https://chapel-lang.org/download.html) the archive of the latest Chapel release and extract it.
3. You can next install Chapel into a specific location by doing

```
./configure
make
make mason
make chpldoc
make install
```

You can control where to install chapel with the `--prefix` option passed to `./configure`, for example 

```
./configure --prefix=~/.chapel
```

to install binaries, libraries and shared files into the `~/.chapel` folder.

4. Make sure that the `/dir/for/install/bin` folder is in your `PATH` variable. 

For more information about different ways to install Chapel and work from source code, see the [Building Chapel](https://chapel-lang.org/docs/usingchapel/building.html#) page in the documentation.
