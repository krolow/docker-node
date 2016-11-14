# node docker

Node image with [onvault](https://github.com/dockito/vault) and 
[waitforit](https://github.com/maxcnunes/waitforit)

**WORKDIR** is set to `/app`

### Example

Run bash `docker run --rm -ti krolow/node:latest /bin/bash`

**Using ONVAULT:**

`docker run --rm krolow/node:latest -v /your/path/:/app ONVAULT npm install`

**Using waitforit:**

`docker run -rm krolow/node:latest -v /your/path:/app bash -c "waitforit --file /app/waitforit.json && npm start"

## License

Licensed under [The MIT License](http://krolow.mit-license.org/)<br />
Redistributions of files must retain the above copyright notice.

## Author

Vinícius Krolow - krolow[at]gmail.com
