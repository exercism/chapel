# Installation

## Windows users

Please install [Windows Subsystem for Linux][wsl-link] and see the next section.

## Linux/Mac users

### Installing with brew

This is the easiest way to install Chapel.
It will give you a basic working installation, which is suitable for working through the Exercism track.
More advanced users may want to build Chapel from source code (next section).

0. If you haven't already, install the [brew][brew-link] package manager.
1. First, make sure brew is up-to-date by running `brew update`
2. Install Chapel by running `brew install chapel`
3. Verify the installation was successful by running `chpl --version`

This will install the chapel compiler (`chpl`), the package manager `mason`, that we will use to run the tests, and the documentation generation tool `chpldoc`, this is not needed for exercism, but it is good to have if (when :) ) you want to develop your own libraries in Chapel.

### Building Chapel from source code

More advanced users may want to build Chapel from the source code themselves. To do so,

1. Install the [prerequisites][prereqs-link]
2. [Download][download-link] the archive of the latest Chapel release and extract it.
3. First, you need to prepare for the installation and setup where you want to install Chapel.
This can be done running the provided `configure` script.
Simply running

```
./configure
```

will install binaries, libraries and shared files into `/usr/local/`, you can change this using the `--prefix` option.
For example, if you want to install chapel into `~/.chapel` you can do

```
./configure --prefix=~/.chapel
```

4. To install the compiler and tools, run 

```
make
make mason
make chpldoc
make install
```

5. Make sure that the `/dir/for/install/bin` folder is in your `PATH` variable. 

For more information about different ways to install Chapel and work from source code, see the [Building Chapel][building-link] page in the documentation.

[wsl-link]: https://learn.microsoft.com/en-us/windows/wsl/install
[brew-link]: https://brew.sh/
[prereqs-link]: https://chapel-lang.org/docs/usingchapel/prereqs.html
[download-link]: https://chapel-lang.org/download.html
[building-link]: https://chapel-lang.org/docs/usingchapel/building.html#