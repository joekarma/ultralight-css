Ultralight CSS is a tissue paper thin s-expression based syntax for
cascading style sheets. The entire "project" is two short functions,
and as such it's not really worth documenting. Here's an example instead:

    (ultralight-css:css
      `((:body :background-color "black"
	       :color "white")
	(:h1 :font-size "14px"
	     :font-family "verdana"
	     :text-decoration "none"
	     :text-transform "small-caps")
	("div#foo" :border "solid red 4px"
		   ,@(list :border-radius 15
			   :-moz-border-radius 15))))

That should return the following:

    body {
      background-color: "black";
      color: "white";
    }
    
    h1 {
      font-size: "14px";
      font-family: "verdana";
      text-decoration: "none";
      text-transform: "small-caps";
    }
    
    div#foo {
      border: "solid red 4px";
      border-radius: 15;
      -moz-border-radius: 15;
    }

And that's it. Enjoy!
