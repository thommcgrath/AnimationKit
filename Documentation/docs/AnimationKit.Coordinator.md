# AnimationKit.Coordinator

This class handles all the aspects of animation. Most users will never need to think about this class at all however. The coordinator can be subclassed to customize behaviors if necessary.

The Run method of [AnimationKit.Task](AnimationKit.Task.md) will use an application-global coordinator if one is not passed in. This global coordinator can be referenced using the AnimationKit.SharedCoordinator method.

## Events

<pre id="event.taskadded"><span style="color: #000000;"><span style="color: #0000FF;">Event</span> TaskAdded (Task <span style="color: #0000FF;">As</span> AnimationKit.Task)</span></pre>
Triggered after a task has been added to the animation queue.

<pre id="event.taskremoved"><span style="color: #000000;"><span style="color: #0000FF;">Event</span> TaskRemoved (Task <span style="color: #0000FF;">As</span> AnimationKit.Task)</span></pre>
Triggered after a task has been removed from the animation queue. This will happen for any of the following reasons:

-	Animation has completed
- Animation was cancelled
- Target has gone out of scope

## Properties

<pre id="property.framespersecond"><span style="color: #000000;">FramesPerSecond <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span> = <span style="color: #336698;">60</span></span></pre>
Allows the developer to customize the performance of the animations. There is a logical maximum of 100 frames per second.

## Methods

<pre id="method.addtask"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> AddTask (Task <span style="color: #0000FF;">As</span> AnimationKit.Task)</span></pre>
Adds a task to the coordinator and begins animating it.

## See Also

[AnimationKit.Task](AnimationKit.Task.md)