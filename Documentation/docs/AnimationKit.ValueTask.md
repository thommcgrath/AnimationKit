# AnimationKit.ValueTask

This task is used to create simple animations for implementors of the [AnimationKit.ValueAnimator](AnimationKit.ValueAnimator.md) interface.

A value task does no actual animation, instead providing a simple way for a custom class to implement their own animation without creating a custom [AnimationKit.Task](AnimationKit.Task.md) subclass.

Value tasks have an identifier property which is used by the implementor to determine what actually needs to change. For example, if an implementor wants to animate an opacity change, the identifier might simply be "*opacity*".

See the [AnimationKit.ValueAnimator](AnimationKit.ValueAnimator.md) interface for an example implementation and usage.

## Constructors

<pre><span style="color: #000000;">Target <span style="color: #0000FF;">As</span> AnimationKit.ValueAnimator, Identifier <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Text</span>, StartValue <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span>, EndValue <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span></span></pre>
Creates a task for Target with the provided identifier, start value, and end values.

## Properties

<pre id="property.curve"><span style="color: #000000;">Curve <span style="color: #0000FF;">As</span> AnimationKit.Curve = AnimationKit.Curve.CreateLinear()</span></pre>
The timing curve to use for this animation.

<pre id="property.durationinseconds"><span style="color: #000000;">DurationInSeconds <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span> = <span style="color: #006633;">1.0</span></span></pre>
Number of seconds the animation will require to complete.

<pre id="property.endvalue"><span style="color: #000000;">EndValue <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span></span></pre>
The final value the task should animate to.

<pre id="property.identifier"><span style="color: #000000;">Identifier <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Text</span></span></pre>
The identifier used to instruct the implementor what the value is used for.

<pre id="property.startvalue"><span style="color: #000000;">StartValue <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span></span></pre>
The beginning value the task should animate from.

## See Also

[AnimationKit.ValueAnimator](AnimationKit.ValueAnimator.md)