# # Ask 
#
# Usage:
#
# ask = require 'ask'
# ask 'What is your favorite color?', /.+/, (response) -> console.log response
#
module.exports = (question, format, callback) ->
  stdin = process.stdin
  stdout = process.stdout

  stdin.resume()
  stdout.write "#{question}:"

  stdin.once 'data', (data) ->
    data = data.toString().trim()
    if format.test(data)
      callback data
    else
      stdout.write "It should match: #{format}\n"
      ask(question, format, callback)

