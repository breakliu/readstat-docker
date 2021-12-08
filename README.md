# Update
* alpine 3.15
* libcsv support
* fixed docker build issue

# What is this?

Evan Miller wrote a library and command line tool called 
[ReadStat](https://github.com/WizardMac/ReadStat). It lets 
you read `.dta`, `.por`, `.sav`, and `.sas7bat` files; and, it lets you
translate them to `.dta`, `.por`, `.sav`, `.sas7bat`, `.xlsx`, or `.csv` 
files. This is useful to me, because I don't want to work in SAS, Stata, 
or SPSS. And, it feels weird to have to fire up R just to get a new format. 
This Docker image let's you translate a file from the CLI, without going 
through the install. 

## Installation

It's easier to install this as a script. Assuming `/usr/local/bin` is in 
your path, do,

```sh
sudo curl https://raw.githubusercontent.com/jbn/readstat/master/readstat-docker --output /usr/local/bin/readstat-docker
sudo chmod a+x /usr/local/bin/readstat-docker
```

Then, to use it, do,

```sh
./readstat-docker input.dta output.csv

./readstat-docker -f test.csv metadata.json test.sav
```

P.S. I <3 Evan Miller.
