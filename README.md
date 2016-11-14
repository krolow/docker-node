# node docker

Node image with [onvault](https://github.com/dockito/vault) and 
[waitforit](https://github.com/maxcnunes/waitforit)

**ONVAULT**

Exposes your ssh key while building images, usefull to run npm install when using private repositories.

**waitforit**

Often is necessary to wait another container be up and running to start your server, for example in order to run your node app, you need to ensure that rabbitmq container is up and running, waitforit will try to connect to the service PORT and will leave when connection is established or when reach timeout.

**WORKDIR** is set to `/app`

### Example

Run bash `docker run --rm -ti krolow/node:latest /bin/bash`

**Using ONVAULT:**

`docker run --rm krolow/node:latest -v /your/path/:/app ONVAULT npm install`

**Using waitforit:**

`docker run -rm krolow/node:latest -v /your/path:/app bash -c "waitforit --file /app/waitforit.json && npm start"`

## License

Licensed under [The MIT License](http://krolow.mit-license.org/)<br />
Redistributions of files must retain the above copyright notice.

## Author

Vinícius Krolow - krolow[at]gmail.com
