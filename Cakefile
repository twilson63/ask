{ exec } = require 'child_process'

task 'spec', 'run specs', (options) ->
  console.log 'type: jasmine-node spec --coffee'

task 'publish', 'publish to npm' (options) ->
  exec 'npm publish', (err, stdout, stderr) ->
    if err then console.log stderr.trim() else console.log 'done'
