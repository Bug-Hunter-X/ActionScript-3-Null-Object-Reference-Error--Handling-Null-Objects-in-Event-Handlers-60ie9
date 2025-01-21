The following ActionScript 3 code attempts to access a property of a null object, resulting in a runtime error. This is a common issue, but the specific cause is sometimes subtle and can be challenging to track down:

```actionscript
function handleEvent(event:Event):void {
  var data:Object = event.target.data; 
  trace(data.someProperty); //Error if data is null
}
```

The problem arises when `event.target.data` is null.  If `event.target` itself is null, the code will throw a null object reference error even before reaching the `data.someProperty` line. This can happen due to improper event handling or incorrect object references within the event flow.  The error might not be immediately obvious because the null check is only on `data`, not `event.target`.