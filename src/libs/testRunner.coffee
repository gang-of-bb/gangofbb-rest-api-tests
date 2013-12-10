# 
# module dependencies
# 
api = require('hippie')
colors = require('colors')

# 
# libs dependencies
# 
ApiMoviesTest = require('../tests/apiMoviesTest')
ApiCategoriesTest = require('../tests/apiCategoriesTest')

# 
# Testing class
# 
class TestRunner

	constructor: (baseUrl) ->
		@baseUrl = baseUrl
		@apiMoviesTest = new ApiMoviesTest(@baseUrl)
		@apiCategoriesTest = new ApiCategoriesTest(@baseUrl)
		return

	# 
	# run tests
	# 
	run: ()->
		console.log('\n... API TESTING RUNNING ...\n'.cyan);

		@apiMoviesTest.run();
		@apiCategoriesTest.run();
		return

module.exports = TestRunner