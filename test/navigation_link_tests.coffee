should = require "should"
NavigationLink = require "../lib/models/navigation_link.js"

describe 'NavigationLink', ->
	describe '#Constructor()', ->
		testLink = new NavigationLink "Contact", "/contact"
		it 'should return an instance of class NavigationLink', ->
			testLink.constructor.name.should.equal 'NavigationLink'
		it 'should have a title', ->
			testLink.title.should.equal 'Contact'
		it 'should have a url', ->
			testLink.url.should.equal '/contact'

	describe '#StaticMethods()', ->
		it 'portfolio_links() should return an array of global links for my portfolio', ->
			links = NavigationLink.portfolio_links()
			links.should.be.instanceOf Array