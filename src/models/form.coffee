module.exports.setup = (app) ->
	app.get '/contact', (req,res) ->
		res.render('contact',{ successful_send : req.flash('sucess') })

	app.post '/contact', (req,res) ->
		mandrill = require('node-mandrill')('INSERT YOUR API KEY HERE');
		mandrill('/messages/send', {
    		message: {
        		to: [{email: 'matt.sencenbaugh@gmail.com', name: 'Matt Sencenbaugh'}],
        		from_email: req.body.email,
        		subject: "New mail from Sencedev.com",
        		text: req.body.message
    		}
		}, 
		(error, response) ->
			console.log JSON.stringify(error) 
			console.log response
		)
		req.flash('sucess', 'Thanks for your email, I will be in touch shortly!')
		res.redirect('/contact')

	return