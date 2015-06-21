# AnimationKit.Task

AnimationKit.Task is the parent class for all animations. It controls things like frame delays and general animation status information.

## Events

<pre id="event.completed"><span style="color: #000000;"><span style="color: #0000FF;">Event</span> Completed ()</span></pre>
When the task has finished executing, after the final Perform event, the `Completed` event will fire. Will not fire if the task was cancelled.

<pre id="event.perform"><span style="color: #000000;"><span style="color: #0000FF;">Event</span> Perform (Final <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Boolean</span>, Time <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span>)</span></pre>
The current state of the animation should be updated. Will not fire if the object referenced by the Item property has gone out of scope. If `Final` is true, this is the last `Perform` event that will be fired for this task.

The `Time` parameter is a value returned by the Xojo `Microseconds` method used to coordinate the execution times of multiple animations. It is strongly recommended that developers calculate based on the `Time` parameter, and not by the value returned by `Microseconds`.

<pre id="event.started"><span style="color: #000000;"><span style="color: #0000FF;">Event</span> Started ()</span></pre>
The `Started` event triggers immediately before the first `Perform` event.

## Properties

<pre id="property.cancelled"><span style="color: #000000;">Cancelled <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Boolean</span> <span style="color: #800000;">// Read Only</span></span></pre>
`Cancelled` will be true if either the `Cancel` method has been called, or the object referenced by the `Item` property has gone out of scope. The task can no longer execute, and no more `Perform` events will trigger. Chained tasks will not be started.

<pre id="property.item"><span style="color: #000000;">Item <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Object = <span style="color: #0000FF;">Nil</span></span></pre>
The target of the animation. This is a weak reference, so that when the target goes out of scope, the animation will automatically cancel.

<pre id="property.lastframetime"><span style="color: #000000;">LastFrameTime <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span> <span style="color: #800000;">// Read Only</span></span></pre>
The time in microseconds that the last `Perform` event was triggered.

<pre id="property.nexttask"><span style="color: #000000;">NextTask <span style="color: #0000FF;">As</span> AnimationKit.Task = <span style="color: #0000FF;">Nil</span></span></pre>
When this task has completed, automatically start the task referenced in this property. The new value will always be set to the end of the chain. To break the chain, set this property to `Nil`. To replace an item in the chain, rather than append, set this property to `Nil` first, then to the intended value.

<pre id="property.started"><span style="color: #000000;">Started <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Boolean</span> <span style="color: #800000;">// Read Only</span></span></pre>
The animation has started.

## Methods

<pre id="method.cancel"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> Cancel ()</span></pre>
Stops the animation where it is.

<pre id="method.completed"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> Completed ()</span></pre>
Triggers an `UnsupportedOperationException`. Subclasses must override so the framework knows when a task is complete and can move on to the next task in the chain.

<pre id="method.elapsedtime"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> ElapsedTime (Time <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span>) <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span></span></pre>
Amount of time in microseconds since `Time` that has elapsed since the task started execution.

<pre id="method.perform"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> Perform (Time <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span>)</span></pre>
Does some status checking and triggers the `Perform` event if necessary.

<pre id="method.run"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> Run ()</span></pre>
Begin the animation using the application global coordinator.

<pre><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> Run (Coordinator <span style="color: #0000FF;">As</span> AnimationKit.Coordinator)</span></pre>
Begin the animation using the coordinator specified.

## Subclassing

Developers can create subclasses to implement new forms of animation.

The `Completed` method must be overridden.

## See Also

[AnimationKit.Coordinator](AnimationKit.Coordinator.md), [AnimationKit.MoveTask](AnimationKit.MoveTask.md)