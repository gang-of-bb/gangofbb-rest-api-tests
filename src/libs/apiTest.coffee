# 
# modules dependencies 
#
colors = require('colors')

#
# generique class apiTester 
# 
class ApiTest
	
	constructor: () ->

	#
	# output test result
	#
	output: (err, ref)->
		output;
		if err
			output = ref + ' ERROR'
			console.log(output.red)
			console.log(err.message.yellow)
		else
			output = ref + ' OK'
			console.log(output.green)

module.exports = ApiTest