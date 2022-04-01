SIXX
====

SIXX is an XML serializer/deserializer written in Smalltalk. The purpose is to store and load Smalltalk objects in a portable, dialect-independent XML format.

This repository is mainly for sources ([Cypress](<https://github.com/CampSmalltalk/Cypress>) format). For further info, see the [main site](http://www.mars.dti.ne.jp/~umejava/smalltalk/sixx/index.html)

### Installation using Metacello
For Squeak and Pharo users, the latest version can be installed via ConfigurationOfSIXX.

#### Squeak
```Smalltalk
Installer squeaksource
    project: 'MetacelloRepository';
    install: 'ConfigurationOfSIXX'. 
(Smalltalk at: #ConfigurationOfSIXX) load
```

#### Pharo
```Smalltalk
Metacello new
  baseline: 'SIXX';
  repository: 'github://mumez/SIXX';
  load.
```
