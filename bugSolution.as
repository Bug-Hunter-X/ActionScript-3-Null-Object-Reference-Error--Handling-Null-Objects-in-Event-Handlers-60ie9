The solution involves adding a null check before accessing `data.someProperty`. A simple `if` statement is sufficient:

```actionscript
function handleEvent(event:Event):void {
  var data:Object = event.target.data; 
  if (data != null) {
    trace(data.someProperty);
  } else {
    trace("data is null"); //Handle the null case gracefully
  }
}
```

However, even better practice is to add a null check for `event.target` as well:

```actionscript
function handleEvent(event:Event):void {
  if (event.target != null && event.target.data != null) {
    trace(event.target.data.someProperty);
  } else {
    trace("event.target or data is null");
  }
}
```
This robust approach prevents errors and adds clarity, allowing for more informative error handling.