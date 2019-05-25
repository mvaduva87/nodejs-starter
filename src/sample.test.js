const { expect } = require('chai')
const sample = require('./sample')

describe('sample', () => {

  describe('#hello()', () => {

    it('should return world', () => {
      expect(sample.hello()).to.equal('world')
    })

  })

})
