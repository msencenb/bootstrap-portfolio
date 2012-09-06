class Skill
	constructor: (@name,@years,@width) ->

Skill.portfolio_skills = ->
		[
			new Skill("iOS", "4 years", 100)
			new Skill("HTML/CSS", "4 years", 100)
			new Skill("Javascript", "3 years", 75)
			new Skill("Ruby on Rails", "2 years", 50)
			new Skill("Java", "2 years", 50)
			new Skill("Python", "1 year", 25)
			new Skill("C", "1 year", 25)
			new Skill("Photoshop", "1 year", 25)
		]

## in a more complex app this would be broken into a /controllers directory
module.exports.setup = (app) ->
	skills = Skill.portfolio_skills()
	app.get '/skills', (req,res) ->
		res.render('skills', {skills: skills})

module.exports = Skill