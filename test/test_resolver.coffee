Promise = require 'bluebird'
assert = require('chai').assert

kesz = require '../src'

cache = kesz()

describe 'A resolver has function', () ->
  describe '"get" that', () ->

    it 'should return Promise', () ->
      val = cache.get 'qaz'
      assert.instanceOf val, Promise

  describe '"set" that', () ->
    it 'should return Promise', () ->
      val = cache.set 'qaz', 123
      assert.instanceOf val, Promise