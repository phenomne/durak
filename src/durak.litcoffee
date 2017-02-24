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

@player_id   | Number      | Unique incremented value |
@history_id  | Number      |                          |
@local_id    | Number      |                          |
@telegram_id | Number      |                          |
@wallet_id   | Number      |                          |
@card_id     | Number      | from 0 to 35 (to 51)     |
@artificial  | Boolean     | AI Player if *true*      |
@suit        | Number      | from 0 to 3              |
@level       | Number      | from 0 to 8 (to 12)      |
@name        | Object      | {@local_id:String}       |
@image_url   | String      | 'http://q.org/i.pmg'     |
@game_id     | Number      | Unique incremented value |
@hands       | Object      | {@player_id:[@card_ids]} |
@bet         | Number      | Amount of money (BTC)    |
@deck        | Array       | of @card_ids             |
@talon       | Number      | @card_id (trump)         |
@kick        | Array       | of @card_ids             |
@players     | Array       | List of players_ids      |
@status      | Object      | {0:load, 1:game, 2:over} |
@nick_name   | String      |                          |
@created     | String      |                          |
@logo_url    | String      |                          |
@btc_address | String      |                          |

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

    class User extends Module
      @extend Game
