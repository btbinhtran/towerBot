(function() {

  module.exports = {
    mongodb: {
      development: {
        name: 'bob-tower-bot-development',
        port: 45297,
        host: 'ds045297.mongolab.com',
        username: 'bob',
        password: 'testtest'
      },
      test: {
        name: 'bob-tower-bot-test',
        port: 45147,
        host: 'ds045147.mongolab.com',
        username: 'bob',
        password: 'testtest'
      },
      staging: {
        name: 'bob-tower-bot-staging',
        port: 45137,
        host: 'ds045137.mongolab.com',
        username: 'bob',
        password: 'testtest'
      },
      production: {
        name: 'tower-bot-production',
        port: 27017,
        host: '127.0.0.1'
      }
    },
    redis: {
      development: {
        name: 'tower-bot-development',
        port: 6397,
        host: '127.0.0.1'
      },
      test: {
        name: 'tower-bot-test',
        port: 6397,
        host: '127.0.0.1'
      },
      staging: {
        name: 'tower-bot-staging',
        port: 6397,
        host: '127.0.0.1'
      },
      production: {
        name: 'tower-bot-production',
        port: 6397,
        host: '127.0.0.1'
      }
    }
  };

}).call(this);
