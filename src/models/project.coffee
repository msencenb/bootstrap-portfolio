module.exports = class Project
	constructor: (@name, @description, @image, @long_description) ->

	pretty_id: ->
		@name.split(' ').join('_')

Project.portfolio_projects = ->
	[
		new Project("Sencedev","This portfolio is a sample of various technologies such as CoffeeScript and Node.js (with Express.js)", "sencedev","<p>This website is actually quite a bit more than just a static site. Technologies used include:</p><ul><li><a href=\"http://coffeescript.org\" target=\"_blank\">Coffeescript</a></li><li><a href=\"http://lesscss.org\" target=\"_blank\">LESS</a></li><li><a href=\"http://jade-lang.com\" target=\"_blank\">Jade</a></li><li><a href=\"http://nodejs.org/\" target=\"_blank\">Node.js</a></li><li><a href=\"http://expressjs.com\" target=\"_blank\">Express.js</a></li><li><a href=\"http://twitter.github.com/bootstrap\" target=\"_blank\">Twitter Bootstrap</a></li></ul><p>If you want to check out the actual code please check out the source for this website on github</p>")
		new Project("App Store", "I have various apps published on the iTunes app store;  as well as iOS code that can be seen on Github.","callerid","<p>I have been developing on the iOS platform since its release in 2008 (back then it wasn't even called iOS).</p><p>Here are a few samples:</p><ul><li><a href=\"https://github.com/msencenb/UIWebViewDelegate-Example\" target=\"_blank\">Github - simple web browser example</a></li><li><a href=\"http://itunes.apple.com/us/app/callerid-phone-number-lookup/id518183356?mt=8\" target=\"_blank\">CallerID</a></li><li><a href=\"http://itunes.apple.com/us/app/inspirational-quotes/id315968627?mt=8\" target=\"_blank\">Inspirational Quotes (originally published 2008)</a></li></ul>")
		new Project("TwoThreeForm", "TwoThreeForm.com is a service that allows you to build forms online for within iOS applications.","twothreeform","<p>TwoThreeForm was a project I created in the Fall of 2011. Due to time constraints it hasn't been actively developed since November 2011 but the site is built on Ruby on Rails. You can also see an example of a static library for iOS on the site as well</p><p><a href=\"http://twothreeform.com\" target=\"_blank\">TwoThreeForm.com</a></p>")
	]

module.exports.setup = (app) ->
	projects = Project.portfolio_projects()
	app.get '/projects', (req,res) ->
		res.render('projects', {projects: projects})