# kesz

[![dependencies Status](https://david-dm.org/tomi77/node-kesz/status.svg)](https://david-dm.org/tomi77/node-kesz)
[![devDependencies Status](https://david-dm.org/tomi77/node-kesz/dev-status.svg)](https://david-dm.org/tomi77/node-kesz?type=dev)

Unified cache access library

## Installation

### NPM

~~~bash
npm install kesz --save
~~~

### Yarn

~~~bash
yarn add kesz
~~~

## Envirnoment

### `CACHE_URL`

URL in format ``memcached://localhost:11211``

## Cache URL format

`service://host:port`

Where `service` is one of

* `memcache` - Memcached server
* `memcached` - Memcached server
* `redis` - Redis server
* `dummy` - Dummy - nothing writes, nothing reads

## Supported libs

### memcache

* [memjs](https://www.npmjs.com/package/memjs)
* [memcached-promisify](https://www.npmjs.com/package/memcached-promisify)

## Usage

Install `kesz` and Your prefer cache library.

~~~js
const cache = require('kesz')('memcache://localhost:11211')
cache.set('key', 'qaz123')
.then(function() {
  cache.get('key')
}).then(function(key) {
  console.log(key)
})
~~~

## API

### `client`

Direct access to client library

### `set(key <string>, value<number|string|Object> [, options<Object>]) -> Promise`

Set an item in the cache

### `get(key <string>) -> Promise<Buffer>`

Get a cache item
