
# Subby
**Subby** is a command-line tool for substituting string case variations.

## Quick Examples
### Basic usage.

```bash
$ echo "apple pie applePie apple_pie" | subby applePie chocolateCake
chocolate cake chocolateCake chocolate_cake
```

### Copy and modify a file.

```bash
$ cat apple_pie.txt
apple pie Apple pie applePie

$ subby applePie chocolateCake < apple_pie.txt > chocolate_cake.txt

$ cat chocolate_cake.txt
chocolate cake Chocolate cake chocolateCake
```

### Change snake case to camel case.

```bash
$ echo "apple pie applePie apple_pie" | subby -i snake -o camel applePie applePie
apple pie applePie applePie
```

## Installation
Ruby is required.

```bash
$ gem install subby
```

## Documentation:
### Online
 <a href="http://htmlpreview.github.io/?https://github.com/kevincjackson/subby/blob/master/man/subby.1.html" target="_blank">Man Page</a>
### Terminal
Usage  

```bash
$ subby
$ subby -h
$ subby --help
```

Man Page  

```bash
$ gem man subby
```

## Project Organization
### Contributing
Contributions are welcome. If you can improve **subby**, please feel free to
fork the project on [github](https://github.com/kevincjackson/subby) and send
me a pull request. Unit tests are in Minitest and UI tests are in 
[BATS](https://github.com/sstephenson/bats) (a simple Bash testing system 
also used on `rbenv`). Add tests to the Rake `test` and `unit_test` tasks.

### Bugs and Feature Requests
[Email me.](mailto:kj31428@gmail.com)

### Author
Kevin Jackson

## License:
[MIT](https://opensource.org/licenses/MIT)
