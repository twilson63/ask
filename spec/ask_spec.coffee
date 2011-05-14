{ ask } = require('../lib/ask')

describe 'ask module', ->
  it 'prompt the user', ->
    ask 'Enter Foo', /.+/, (response) ->
      expect(response).toEqual('Foo')
      asyncSpecDone()
    asyncSpecWait()
      
