# DokuWiki Docker Image for Raspbian

This docker container based on debian jessie. Builds a docker container image with a DokuWiki running on Apache2 PHP server.

## Docker Hub

Docker Hub image can be pulled from last release build.

```
docker pull nepitwin/pi_dokuwiki
docker run -d -p 80:80 nepitwin/pi_dokuwiki
```

## Build Container

```
git clone https://github.com/Nepitwin/DockerDokuWikiPI.git
cd DockerDokuWikiPI
docker build --rm=true --tag=pi/dokuwiki .
```

After build is complete create a docker container and expose port 80.

```
docker run -d -p 80:80 pi/dokuwiki
```

After running DokuWiki can be configured by following URL.
  - www.DockerIP/dokuwiki/install.php

## License

The MIT License (MIT)

Copyright 2017 Andreas Sekulski

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
