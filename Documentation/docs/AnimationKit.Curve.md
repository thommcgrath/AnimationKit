# AnimationKit.Curve

This class describes a cubic bézier curve which controls the timing of animation tasks. The values are identical to css easing animations, meaning you can use an [online generator](http://matthewlein.com/ceaser/) to experiment and generate your own curves.

## Constructors

<pre><span style="color: #000000;">P1 <span style="color: #0000FF;">As</span> Xojo.Core.Point, P2 <span style="color: #0000FF;">As</span> Xojo.Core.Point</span></pre>
Creates a new curve with points P1 and P2. P0 is always {0, 0}, and P3 is always {1, 1}.

<pre><span style="color: #000000;">P1X <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Single</span>, P1Y <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Single</span>, P2X <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Single</span>, P2Y <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Single</span></span></pre>
Alternate constructor which uses 4 singles instead of 2 Xojo.Core.Point objects.

## Methods

<pre id="method.evaluate"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> Evaluate (Time <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span>, StartValue <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span>, EndValue <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span>) <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span></span></pre>
Determine the value between StartValue and EndValue given a Time between 0 and 1.

<pre id="method.reverse"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> Reverse () <span style="color: #0000FF;">As</span> AnimationKit.Curve</span></pre>
Returns a new curve whose with inverted control points.

## Shared Methods

<pre id="method.createeasein"><span style="color: #000000;"><span style="color: #0000FF;">Shared</span> <span style="color: #0000FF;">Function</span> CreateEaseIn () <span style="color: #0000FF;">As</span> AnimationKit.Curve</span></pre>
Returns a new curve using the EaseIn preset.

<pre id="method.createeaseinout"><span style="color: #000000;"><span style="color: #0000FF;">Shared</span> <span style="color: #0000FF;">Function</span> CreateEaseInOut () <span style="color: #0000FF;">As</span> AnimationKit.Curve</span></pre>
Returns a new curve using the EaseInOut preset.

<pre id="method.createeaseout"><span style="color: #000000;"><span style="color: #0000FF;">Shared</span> <span style="color: #0000FF;">Function</span> CreateEaseOut () <span style="color: #0000FF;">As</span> AnimationKit.Curve</span></pre>
Returns a new curve using the EaseOut preset.

<pre id="method.createfrompreset"><span style="color: #000000;"><span style="color: #0000FF;">Shared</span> <span style="color: #0000FF;">Function</span> CreateFromPreset(Preset <span style="color: #0000FF;">As</span> AnimationKit.Curve.Presets) <span style="color: #0000FF;">As</span> AnimationKit.Curve</span></pre>
Returns a new curve using the provided preset.

<pre id="method.createlinear"><span style="color: #000000;"><span style="color: #0000FF;">Shared</span> <span style="color: #0000FF;">Function</span> CreateLinear () <span style="color: #0000FF;">As</span> AnimationKit.Curve</span></pre>
Returns a new curve using the Linear preset.

## Enumerations

<pre style="color: #000000;" id="enumeration.presets">Presets {
	Linear = 0,
	EaseIn,
	EaseInBack,
	EaseInCirc,
	EaseInCubic,
	EaseInExpo,
	EaseInQuad,
	EaseInQuart,
	EaseInQuint,
	EaseInSine,
	EaseOut,
	EaseOutBack,
	EaseOutCirc,
	EaseOutCubic,
	EaseOutExpo,
	EaseOutQuad,
	EaseOutQuart,
	EaseOutQuint,
	EaseOutSine,
	EaseInOut,
	EaseInOutBack,
	EaseInOutCirc,
	EaseInOutCubic,
	EaseInOutExpo,
	EaseInOutQuad,
	EaseInOutQuart,
	EaseInOutQuint,
	EaseInOutSine
}</pre>

## See Also

[AnimationKit.MoveTask](AnimationKit.MoveTask.md), [AnimationKit.ScrollTask](AnimationKit.ScrollTask.md), [AnimationKit.ValueTask](AnimationKit.ValueTask.md)