[![build status](https://secure.travis-ci.org/twilson63/ask.png)](http://travis-ci.org/twilson63/ask)
# Ask Prompt Module

This module makes it easy to add an ask prompt in your
cake files 

## Usage

```
npm install ask

# in your cakefile
ask = require('ask')

task 'atask', 'description', ->
  ask 'question', /.+/, (answer) ->
    console.log answer
```

## Feedback

Post an issue on github issues.

## License

See LICENSE
