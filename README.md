# SIXX

SIXX is an XML serializer/deserializer written in Smalltalk. The purpose is to store and load Smalltalk objects in a portable, dialect-independent XML format.

[![CI](https://github.com/mumez/SIXX/actions/workflows/main.yml/badge.svg)](https://github.com/mumez/SIXX/actions/workflows/main.yml)

This repository is mainly for sources ([Cypress](<https://github.com/CampSmalltalk/Cypress>) format). For further info, see the [main site](http://www.mars.dti.ne.jp/~umejava/smalltalk/sixx/index.html) and [wiki site](https://swikis.ddo.jp/umejava/SIXX).

## Installation using Metacello

For Squeak and Pharo users, the latest version can be installed via ConfigurationOfSIXX.

### Pharo & Squeak

```Smalltalk
Metacello new
  baseline: 'SIXX';
  repository: 'github://mumez/SIXX';
  load
```

### Squeak before version 5

```Smalltalk
Installer squeaksource
    project: 'MetacelloRepository';
    install: 'ConfigurationOfSIXX'. 
(Smalltalk at: #ConfigurationOfSIXX) load
```
