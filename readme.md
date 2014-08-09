# Awdry [![Build Status](https://travis-ci.org/quarterto/Awdry.svg)](https://travis-ci.org/quarterto/Awdry)

Automatically find views to render from a controller action. Built on [Sodor](https://github.com/quarterto/Sodor)

```
npm install awdry
```

## Usage
Given a templater quite like [Brio](https://github.com/quarterto/Brio) that takes a dotted path to a template and a hash of template variables, attaches a render method to controller action with an appropriate path.

```javascript
var extend = require('estira').extend;
var Controller = require('awdry');
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
});

Account.handle('index', [])({}); //⇒ 'hello world'
```

## Licence

MIT. &copy; 2014 Matt Brennan.
