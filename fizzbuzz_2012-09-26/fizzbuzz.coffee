class FizzBuzz
  constructor: ->
    @numbers = [1..100]

  print: (number) ->
    if number % 15 == 0
      return 'FizzBuzz'
    else if number % 5 == 0
      return 'Buzz'
    else if number % 3 == 0
      return 'Fizz'
    else
      return number

  output: ->
    @print number for number in @numbers

module.exports = FizzBuzz
