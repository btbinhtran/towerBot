ircBot = null

describe 'App.IrcBot', ->

  describe 'fields', ->
    beforeEach (done) ->
      ircBot = App.IrcBot.build
        channel: 'A channel'
        server: 'A server'
        name: 'A name'

      done()

    test 'channel', ->
      assert.ok ircBot.get('channel')

    test 'server', ->
      assert.ok ircBot.get('server')

    test 'name', ->
      assert.ok ircBot.get('name')

  describe 'relations', ->
