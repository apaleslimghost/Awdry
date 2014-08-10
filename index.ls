module.exports =
	template: ->
		throw new Error "Controller #{@display-name} does not provide any templates."

	context: (action)->
		render: (data = {})~>
			@template (@get-path action), data

	get-path: (action)->
		"#{@display-name.to-lower-case!}.#action"
