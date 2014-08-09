require! {
	Controller: './index.js'
	'karma-sinon-expect'.expect
}

export 'Awdry':
	'actions get a render method': (done)->
		class Foo extends Controller
			bar: ->
				expect @render .to.be.a Function
				done!

		(Foo.handle \bar []) {}

	'render finds a template': (done)->
		class Foo extends Controller
			@template = expect.sinon.stub!
			bar: ->
				@render!
				expect @@template .to.be.called-with \foo.bar
				done!

		(Foo.handle \bar []) {}

	'render passes parameters': (done)->
		class Foo extends Controller
			@template = expect.sinon.stub!
			bar: ->
				@render r = a:1
				expect @@template .to.be.called-with \foo.bar r
				done!

		(Foo.handle \bar []) {}

