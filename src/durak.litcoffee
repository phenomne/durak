Durak
=====

Module
------

    moduleKeywords = ['extended', 'included']
    class Module
      @extend: (obj) ->
        for key, value of obj when key not in moduleKeywords
          @[key] = value

        obj.extended?.apply(@)
        this

      @include: (obj) ->
        for key, value of obj when key not in moduleKeywords
          # Assign properties to the prototype
          @::[key] = value

        obj.included?.apply(@)
        this

Game
----

    Game =

### Analyze game and suggest user action
- **game_id**   - A unique ID for the game
- **player_id** - A unique ID for the player
- **options**   - An optional Hash of key, value pairs

      analyze: (game_id, player_id) ->

### Start casino server
- **game_id**   - A unique ID for the game

      start: (game_id) ->

### Kick

      kick: (game_id, player_id) ->

###

      put: (game_id, card_id, turn) ->

###

      about: (local_id) ->

###

      rules: (local_id) ->

###

      stats: (player_id, local_id) ->

###

      find: (bet_from, bet_to, local) ->

###

      get: (collection, key) ->

###

      put: (collection, key, value) ->

###

      log: (game_id, player_id) ->

###

      check: (wallet_id) ->

###

      hold: (wallet_id, seconds, reason ) ->

###

      find: (id) ->

###

      create: (telegram_id) ->

###

      extended: ->
        @include

###

          new: (bet, rules) ->

###

          join: (game_id) ->


###

          quit: (game_id) ->

###

          balance: (wallet_id) ->

###

          stats: () ->

###

          render: (styl, game_id, player_id) ->

###

          follow: (player_id) ->

###

          send: (wallet_id, value, btc_address) ->

User
----

    class User extends Module
      @extend Game
