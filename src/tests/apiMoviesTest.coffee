# 
# module dependencies
# 
api = require('hippie')
colors = require('colors')
ApiTest = require('../libs/apiTest')

# 
# Class movies api tester
# 
class ApiMoviesTest extends ApiTest

	constructor: (host) ->
		@host = host
		api.assert.showDiff = true

	# 
	# run tests
	# 
	run: ()->
		@getMovies()
		@getMoviesItem()

	# 
	# test movies listing endpoint availibility
	# 
	getMovies: ()->
		api()
		.json()
		.base(@host)
		.get('movies')
		.expectStatus(200)
		.end((err, res, body)=>
			@output(err, 'GET /movies/')
		)

	# 
	# test movies item endpoint availibility
	# 
	getMoviesItem: ()->
		api()
		.json()
		.base(@host)
		.get('movies/22')
		.expectStatus(200)
		.expectValue('id', 22)
		.end((err, res, body)=>
			@output(err, 'GET /movies/:id')
		)

module.exports = ApiMoviesTest