{ exec, spawn } = require 'child_process'

# ANSI Terminal Colors
bold = '\033[0;1m'
green = '\033[0;32m'
reset = '\033[0m'
red = '\033[0;31m'

log = (message, color, explanation) ->
  console.log color + message + reset + ' ' + (explanation or '')

build = (watch, callback) ->
  if typeof watch is 'function'
    callback = watch
    watch = false
  options = ['-c', '-o', 'lib', 'src']
  options.unshift '-w' if watch

  coffee = spawn 'coffee', options
  coffee.stdout.on 'data', (data) -> print data.toString()
  coffee.stderr.on 'data', (data) -> log data.toString(), red
  coffee.on 'exit', (status) -> callback?() if status is 0

task 'build', 'build module', ->
  build -> log ':-)', green

task 'spec', 'run specs', (options) ->
  console.log 'type: jasmine-node spec --coffee'

task 'publish', 'publish to npm', (options) ->
  exec 'npm publish', (err, stdout, stderr) ->
    if err then console.log stderr.trim() else console.log 'done'