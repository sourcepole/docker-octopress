# docker-octopress

A docker image for Octopress.

## Usage

### Start container

Just execute the following command to enter the container:

```
docker run -i -t -p 4000 -n myoctopress -u octopress aratana/octopress /bin/bash -l
```

### Preview

First, start the octopress server for preview.
Execute `rake preview` in the octopress directory on the container.

```
cd ~/octopress
rake preview
```

To check the mapping of port, execute `docker port` command on the host:

```
docker port myoctopress 4000
```

Open the preview by accessing the host with the port obtained by `docker port`.

## License

The MIT License (MIT)

Copyright (c) 2014 Tomoya Kose

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
