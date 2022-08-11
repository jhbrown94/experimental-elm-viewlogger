This is a quick hack to demonstrate how one might log from an Elm view function using a custom element.

To snag this for your own project, you'd grab these files:
* src/ViewLogger.elm
* logger.js

In your `index.html` `<head>`, put:
```
	<script src="/logger.js"></script>
```

Then in your Elm `view` function, if you want to log something, use `ViewLogger.log` to put a hidden custom element in your Html as such:
```
ViewLogger.log {url = "https://path/to/post", data = mydata |> myDataJsonEncoder} 
```

This will post a log entry when it's first introduced into the view, and then whenever the data value changes. 

You will want to modify how `logger.js` formats log messages for your endpoint, of course.
