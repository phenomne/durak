Durak: Classic
==============

Durak is a card game that is popular in post-Soviet states.

Setup
-----

##	Gameplay
### Attack
### Defense
### End of turn
### Winning and losing
### Team play
### "Fool with epaulettes"
##	Other variants and rules

## DRAKON Flowcharts
[DRAKON](https://en.wikipedia.org/wiki/DRAKON) is an algorithmic
visual programming language developed within the Buran space project
following ergonomic design principles. The language provides a uniform
way to represent [flowcharts](https://en.wikipedia.org/wiki/Flowchart)
of any complexity that are easy to read and understand.


## Properties, Method and Object

### Table of Properties

Property | Type | Description or Example
| -------------- | ------------------ | ----------- | ------------------------ |
| Artificial (2) | @player_id         | Number      |                          |
|                | @history_id        | Number      |                          |
|                | @local_id          | Number      |                          |
|                | @wallet_id         | Number      |                          |
|                | @nick_name         | String      |                          |
|                | @created_timestamp | String      |                          |
|                | @logo_url          | String      |                          |
|                | @artificial        | Boolean     |                          |
| -------------- | ------------------ | ----------- | ------------------------ |
| Card       (3) | @card_id           | Number      | from 0 to 35 (to 51)     |
|                | @suit              | Number      | from 0 to 3              |
|                | @level             | Number      | from 0 to 8 (to 12)      |   
|                | @name              | Object      | {@local_id:String}       |
|                | @image_url         | String      | 'http://q.org/i.pmg'     |
| -------------- | ------------------ | ----------- | ------------------------ |
| Controller (4) |                    |             |                          |
|                |                    |             |                          |
| -------------- | ------------------ | ----------- | ------------------------ |
| Display    (5) |                    |             |                          |
| -------------- | ------------------ | ----------- | ------------------------ |
| Game       (6) | @game_id           | Number      | Unique incremented value |
|                | @hands             | Object      | {@player_id:[@card_ids]} |
|                | @bet               | Number      | Amount of money (BTC)    |
|                | @deck              | Array       | of @card_ids             |
|                | @talon             | Number      | @card_id (trump)         |
|                | @kick              | Array       | of @card_ids             |
|                | @players           | Array       | List of players_ids      |
|                | @status            | Object      | {0:load, 1:game, 2:over} |
| -------------- | ------------------ | ----------- | ------------------------ |
| History    (7) |                    |             |                          |
| -------------- | ------------------ | ----------- | ------------------------ |
| Player     (8) | @player_id         | Number      | Unique incremented value |
|                | @history_id        | Number      |                          |
|                | @local_id          | Number      |                          |
|                | @telegram_id       | Number      |                          |
|                | @wallet_id         | Number      |                          |
|                | @nick_name         | String      |                          |
|                | @created_timestamp | String      |                          |
|                | @logo_url          | String      |                          |
|                | @artificial        | Boolean     |                          |
| -------------- | ------------------ | ----------- | ------------------------ |
| Results    (9) |                    |             |                          |
| -------------- | ------------------ | ----------- | ------------------------ |
| Rules     (10) |                    |             |                          |
| -------------- | ------------------ | ----------- | ------------------------ |
| Stats     (11) |                    |             |                          |
| -------------- | ------------------ | ----------- | ------------------------ |
| Wallet    (12) | @wallet_id         | Number      |                          |
|                | @btc_address       | String      |                          |
| -------------- | ------------------ | ----------- | ------------------------ |
|    Count:  12  |                    |             |                          |

### Table of Methods

| Class          | Method            | Arguments                        |
| -------------- | ----------------- | -------------------------------- |
| Artificial (1) | Analyze()         | @game_id, @player_id             |
| -------------- | ----------------- | -------------------------------- |
| Card       (2) | Get()             | @game_id                         |
|                | Kick()            | @game_id                         |
|                | Put()             | @game_id, @card_id, @turn        |
| -------------- | ----------------- | -------------------------------- |
| Controller (3) | About()           | @local_id                        |
|                | Rules()           | @local_id                        |
|                | Stats()           | @player_id, @local_id            |
|                | Register()        | @telegram_id                     |
|                | New()             | @bet, @rules                     |
|                | Join()            | @game_id                         |
|                | Find()            | @bet_from, @bet_to, @local       |
|                | Quit()            | @game_id                         |
| -------------- | ----------------- | -------------------------------- |
| Data       (4) | Get()             | @collection, @key                |
|                | Put()             | @collection, @key, @value        |
| -------------- | ----------------- | -------------------------------- |
| Display    (5) | Render()          | @styl, @game_id, @player_id      |
| -------------- | ----------------- | -------------------------------- |
| Game       (6) | Create            |                                  |
|                | Save              |                                  |
| -------------- | ----------------- | -------------------------------- |
| History    (7) | Save()            | @game_id, [@player_id],          |
| -------------- | ----------------- | -------------------------------- |
| Player     (8) | New()             | @bet                             |
|                | Join()            | @game_id                         |
|                | Quit()            | @game_id                         |
|                | Stats()           | @local                           |
|                | Follow()          | @player_id                       |
| -------------- | ----------------- | -------------------------------- |
| Results    (9) |                   |                                  |
| -------------- | ----------------- | -------------------------------- |
| Rules     (10) |                   |                                  |
| -------------- | ------------------| -------------------------------- |
| Stats     (11) |                   |                                  |
| -------------- | ----------------- | -------------------------------- |
| Wallet    (12) | Check()           | @wallet_id                       |
|                | Send()            | @wallet_id, @value, @btc_address |
|                | Hold()            | @wallet_id, @seconds, @reason    |
| -------------- | ----------------- | -------------------------------- |
|     Count:  12 |                   |                                  |

### Table of Methods



## Data Structure

## Installation

## Usage

## Links, Sources, Materials & etc.
- Markdown Cheatsheet: [github.com/adam-p](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
- The Little Book on CoffeeScript: [arcturo.github.io](https://arcturo.github.io/library/coffeescript/index.html)


## MIT License

Copyright (c) Rope Games

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
