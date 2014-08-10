# Awdry [![Build Status](https://travis-ci.org/quarterto/Awdry.svg)](https://travis-ci.org/quarterto/Awdry)

Automatically find views to render from a controller action. Works with [Sodor](https://github.com/quarterto/Sodor) 0.3.

```
npm install awdry
```

## Usage
Given a templater quite like [Brio](https://github.com/quarterto/Brio) that takes a dotted path to a template and a hash of template variables, attaches a render method to controller action with an appropriate path.

```javascript
var extend = require('estira').extend;
var Controller = require('sodor').Controller;
var awdry = require('awdry')
var brio = require('brio');

var templates = brio((t) => (d) => t, {
	account: {
		index: 'hello world'
	}
});

var Account = extend.call(Controller, 'Account', {
	index: function() {
		return this.render();
	}
}).meta(awdry);

Account.handle('index', [])({}); //⇒ 'hello world'
```

## Licence

MIT. &copy; 2014 Matt Brennan.
