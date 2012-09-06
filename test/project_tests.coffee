should = require "should"
Project = require "../lib/models/project.js"

describe 'Project', ->
	describe '#Constructor()', ->
		testProject = new Project "Sencedev", "short description", "sencedev", "<p>long description</p>"
		it 'should return an instance of class project', ->
			testProject.constructor.name.should.equal 'Project'
		it 'should have a name', ->
			testProject.name.should.equal 'Sencedev'
		it 'should have a description', ->
			testProject.description.should.equal 'short description'
		it 'should have an image file name', ->
			testProject.image.should.equal 'sencedev'
		it 'should have a long description for modal', ->
			testProject.long_description.should.equal '<p>long description</p>'

	describe '#projectInstanceMethods()', ->
		testProject = new Project "Github Project S", "short description", "sencedev", "<p>long description</p>"
		it 'pretty_id() should return an id with underscores instead of spaces', ->
			testProject.pretty_id().should.equal 'Github_Project_S'

	describe '#ProjectStaticMethods()', ->
		it 'portfolio_projects() should return an array of my projects that I wish to display', ->
			projects = Project.portfolio_projects()
			projects.should.be.instanceOf Array