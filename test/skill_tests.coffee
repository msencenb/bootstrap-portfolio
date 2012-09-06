should = require "should"
Skill = require "../lib/models/skill.js"

describe 'Skill', ->
	describe '#Constructor()', ->
		testSkill = new Skill "iOS", "4 years", 100
		it 'should return an instance of class skill', ->
			testSkill.constructor.name.should.equal 'Skill'
		it 'should have a name', ->
			testSkill.name.should.equal 'iOS'
		it 'should have a number of years string', ->
			testSkill.years.should.equal '4 years'
		it 'should have a width for ui progress bar', ->
			testSkill.width.should.equal 100

	describe '#SkillStaticMethods()', ->
		it 'portfolio_skills() should return an array of all my skills', ->
			skills = Skill.portfolio_skills()
			skills.should.be.instanceOf Array