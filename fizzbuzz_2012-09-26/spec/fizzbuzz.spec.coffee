FizzBuzz = require('../fizzbuzz')

describe 'FizzBuzz', ->
  fb = null
  beforeEach ->
    fb = new FizzBuzz

  it 'should have a range of 100 numbers', ->
    expect(fb.numbers.length).toEqual(100)

  describe 'print', ->
    it 'should output "Fizz" when a number is divisible by 3 (but not 15)', ->
      expect(fb.print(3)).toEqual('Fizz')
      expect(fb.print(27)).toEqual('Fizz')
      expect(fb.print(66)).toEqual('Fizz')

    it 'should output "Buzz" when a number is divisible by 5 (but not 15)', ->
      expect(fb.print(5)).toEqual('Buzz')
      expect(fb.print(35)).toEqual('Buzz')
      expect(fb.print(100)).toEqual('Buzz')

    it 'should output "FizzBuzz" when a number is divisible by 15', ->
      expect(fb.print(15)).toEqual('FizzBuzz')
      expect(fb.print(45)).toEqual('FizzBuzz')
      expect(fb.print(90)).toEqual('FizzBuzz')

    it 'should output the number itself when not divisible by either 3 or 5', ->
      expect(fb.print(11)).toEqual(11)
      expect(fb.print(34)).toEqual(34)
      expect(fb.print(88)).toEqual(88)
