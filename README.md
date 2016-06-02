OO rewrite of a "function" object anti-pattern
==============================================

Demonstration of object-oriented programming vs the "function"
objects as described by:

<http://www.tomdalling.com/blog/ruby/pure-function-as-an-object-PFAAO-pattern/>

Should work the same as the original code but more object-oriented.


Running The Code
----------------

First, install the dependencies with:

```sh
bundle install
```

Then run the code with:

```sh
bundle exec ruby convert.rb
```


Acknowledgements
----------------

The `input.json` data set comes from JSON Studio website:

<http://jsonstudio.com/resources/>

Not meant for any offense against individuals promoting this
"object" functions like Tom (the original author before my
refactor). We are are sharing ideas and I appreciate his
contribution. Just trying to bring up a counter-point on why
I think his method is an anti-pattern.
