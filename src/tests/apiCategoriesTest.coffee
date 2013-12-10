# 
# module dependencies
# 
api = require('hippie')
colors = require('colors')
ApiTest = require('../libs/apiTest')

# 
# Class categories api tester
# 
class ApiCategoriesTest extends ApiTest

	constructor: (host) ->
		@host = host
		api.assert.showDiff = true

	# 
	# run tests
	# 
	run: ()->
		@getCategories()

	# 
	# test categories listing endpoints availibility
	# 
	getCategories: ()->
		api()
		.json()
		.base(@host)
		.get('categories')
		.expectStatus(200)
		.end((err, res, body)=>
			@output(err, "GET /categories");
		)

module.exports = ApiCategoriesTest