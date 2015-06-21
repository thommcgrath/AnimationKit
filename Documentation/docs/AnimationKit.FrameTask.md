# AnimationKit.FrameTask

Inherits from [AnimationKit.Task](AnimationKit.Task.md).

This task controls animations for implementors of the [AnimationKit.FrameTarget](AnimationKit.FrameTarget.md) interface.

A frame task does no actual animation, instead providing a way for an implementor to animate using sprites. Frame tasks have an identifier property which is used by the implementor to determine which sprite the new frame is intended for.

See the [AnimationKit.FrameTarget](AnimationKit.FrameTarget.md) interface for an example implementation and usage.

## Constructors

<pre><span style="color: #000000;">Target <span style="color: #0000FF;">As</span> AnimationKit.FrameTarget, Frames <span style="color: #0000FF;">As</span> AnimationKit.FrameSet</span></pre>
Creates a task for Target with the provided set of frames. The frame set can be modified after the task is created, but before it is run.

## Properties

<pre id="property.durationinseconds"><span style="color: #000000;">DurationInSeconds <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span> = <span style="color: #006633;">1.0</span></span></pre>
If the Looping property is true, this is the number of seconds required to complete one loop of the animation. If the Looping property is false, this is the number of seconds required to complete the animation.

[AnimationKit.Coordinator.FramesPerSecond](AnimationKit.Coordinator.md#property.framespersecond) has minimal impact on the animation speed. The duration property fully determines the speed at which frames will be swapped. This means frames may be duplicated or dropped to match the intended duration.

For example, assuming the default of 60 frames per second, a frame set of 30 frames, and a duration of 1 second, each frame in the set will be displayed for two animation frames.

The implementor will only receive a change notification when the frame actually changes; duplicated frames will not trigger duplicate notifications.

<pre id="property.frames"><span style="color: #000000;">Frames <span style="color: #0000FF;">As</span> AnimationKit.FrameSet = <span style="color: #0000FF;">New</span> AnimationKit.FrameSet()</span></pre>
The set of frames to play/loop through.

<pre id="property.identifier"><span style="color: #000000;">Identifier <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Text</span> = <span style="color: #6600FE;">&quot;&quot;</span></span></pre>
The identifier is used to instruct the implementor which sprite the new frame is for.

<pre id="property.looping"><span style="color: #000000;">Looping <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Boolean</span> = <span style="color: #0000FF;">False</span></span></pre>
If true, the animation will never end.

## See Also

[AnimationKit.Frame](AnimationKit.Frame.md), [AnimationKit.FrameSet](AnimationKit.FrameSet.md), [AnimationKit.FrameTarget](AnimationKit.FrameTarget.md)