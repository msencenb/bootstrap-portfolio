class NavigationLink
	constructor: (@title,@url) ->

NavigationLink.portfolio_links = ->
	[
    	new NavigationLink " About", "/"
    	new NavigationLink " Projects", "/projects"
    	new NavigationLink " Skills", "/skills"
    	new NavigationLink " Contact", "/contact"
 	]

module.exports = NavigationLink