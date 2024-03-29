# @example
#   async = require('async')
#   admin = null
#   user  = null
#
#   async.series [
#     (callback) => App.User.destroy(callback)
#     (callback) => App.Post.destroy(callback)
#     (callback) => App.User.create
#       firstName:  'Admin'
#       lastName:   'User'
#       email:      'admin@localhost.com'
#       (error, record) =>
#         admin = record
#         callback()
#     (callback) => App.User.create
#       firstName:  'Registered'
#       lastName:   'User'
#       email:      'registered@localhost.com'
#       (error, record) =>
#         user = record
#         callback()
#   ]

App.requireDirectory('./test/factories')

_.series [
  (callback) =>
    _(20).timesAsync callback, (next) =>
      Tower.Factory.create 'ircBot', (error, record) =>
        console.log _.stringify(record)
        next()
], (error) =>
  # Check to see if there was an error in the seed
  if error
    console.log 'Something went wrong creating seed data... Try changing something and running again.'
  else
    console.log 'Successfully created seed data!'

  # Close task
  process.exit()
