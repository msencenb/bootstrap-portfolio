flash = require('connect-flash');
express = require 'express'
app = express()
pub = __dirname + '/public'
app.use(express.static(pub))
app.use(express.errorHandler())
app.use(express.bodyParser())
app.use(express.cookieParser('SencedevPortfolioSecret'));
app.use(express.session());
app.use(flash());

## Setup navigation links to all pages on this portfolio
NavigationLink = require('./models/navigation_link.js')
app.use (req,res,next) ->
  res.locals.navigationLinks = NavigationLink.portfolio_links()
  res.locals.path = req.path
  if req.headers.host.match(/^www/) != null
  	res.redirect('http://' + req.headers.host.replace(/^www\./,'') + req.url)
  else
    next()

app.use(app.router)
app.set('views', __dirname + '/views')
app.set('view engine', 'jade')

Skill = require('./models/skill.js')
Skill.setup(app)

Project = require('./models/project.js')
Project.setup(app)

AppForms = require('./models/form.js')
AppForms.setup(app)

app.get '/', (req,res) ->
	res.render('about')

app.listen(3000)
console.log('listening on port 3000')