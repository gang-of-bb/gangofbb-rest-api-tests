TestRunner = require('./libs/testRunner')

# 
# Running tests
# 
testRunner = new TestRunner('http://gangofbb.bhtz.fr/api/')
testRunner.run();