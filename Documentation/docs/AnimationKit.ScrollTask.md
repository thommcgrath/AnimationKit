# AnimationKit.ScrollTask

Inherits from [AnimationKit.Task](AnimationKit.Task.md).

This class is used to animate scrolling behaviors for any class which implements the [AnimationKit.Scrollable](AnimationKit.Scrollable.md) interface. Delegate classes are built-in to support scrolling the [ScrollBar](http://docs.xojo.com/index.php/Scrollbar), [TextArea](http://docs.xojo.com/index.php/TextArea), and [Listbox](http://docs.xojo.com/index.php/Listbox) controls.

## Constructors

<pre><span style="color: #000000;">Target <span style="color: #0000FF;">As</span> AnimationKit.Scrollable</span></pre>
Creates the task using a class which implements the AnimationKit.Scrollable interface.

<pre><span style="color: #000000;">Target <span style="color: #0000FF;">As</span> Listbox</span></pre>
Creates the task using using the provided Listbox. The Position property links to the Listbox.ScrollPosition property. Minimum and Maximum properties have no effect on Listbox controls.

<pre><span style="color: #000000;">Target <span style="color: #0000FF;">As</span> ScrollBar</span></pre>
Creates the task using using the provided Scrollbar. The Position property links to the ScrollBar.Value property.

<pre><span style="color: #000000;">Target <span style="color: #0000FF;">As</span> TextArea</span></pre>
Creates the task using using the provided TextArea. The Position property links to the TextArea.ScrollPosition property. Minimum and Maximum properties have no effect on TextArea controls.

## Properties

<pre id="property.animatemaximum"><span style="color: #000000;">AnimateMaximum <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Boolean</span> = <span style="color: #0000FF;">False</span></span></pre>
When true, the target's Maximum property will be animated.

<pre id="property.animateminimum"><span style="color: #000000;">AnimateMinimum <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Boolean</span> = <span style="color: #0000FF;">False</span></span></pre>
When true, the target's Minimum property will be animated.

<pre id="property.animateposition"><span style="color: #000000;">AnimatePosition <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Boolean</span> = <span style="color: #0000FF;">False</span></span></pre>
When true, the target's Position property will be animated.

<pre id="property.curve"><span style="color: #000000;">Curve <span style="color: #0000FF;">As</span> AnimationKit.Curve = AnimationKit.Curve.CreateLinear()</span></pre>
The timing curve to use for this animation.

<pre id="property.durationinseconds"><span style="color: #000000;">DurationInSeconds <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span> = <span style="color: #006633;">1.0</span></span></pre>
Number of seconds the animation will require to complete.

<pre id="property.maximum"><span style="color: #000000;">Maximum <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span> = Target.Maximum</span></pre>
The final scroll maximum of the target. Changing this value automatically sets AnimateMaximum to True.

<pre id="property.minimum"><span style="color: #000000;">Minimum <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span> = Target.Minimum</span></pre>
The final scroll minimum of the target. Changing this value automatically sets AnimateMinimum to True.

<pre id="property.position"><span style="color: #000000;">Position <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span> = Target.Position</span></pre>
The final scroll position of the target. Changing this value automatically sets AnimatePosition to True.

## Methods

<pre id="method.enablevalues"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> EnableValues (<span style="color: #0000FF;">ParamArray</span> Keys() <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">UInt64</span>)</span></pre>
Pass one or more of the Key constants to enable property animations in bulk.

<pre id="method.disablevalues"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> DisableValues (<span style="color: #0000FF;">ParamArray</span> Keys() <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">UInt64</span>)</span></pre>
Pass one or more of the Key constants to disable property animations in bulk.

## Constants

<pre><span style="color: #000000;"><span style="color: #0000FF;">Const</span> KeyMaximum = <span style="color: #336698;" id="constant.keymaximum">2</span><br><span style="color: #0000FF;">Const</span> KeyMinimum = <span style="color: #336698;" id="constant.keyminimum">1</span><br><span style="color: #0000FF;">Const</span> KeyPosition = <span style="color: #336698;" id="constant.keyposition">4</span><br></span></pre>

## See Also

[AnimationKit.Scrollable](AnimationKit.Scrollable.md), [AnimationKit.Curve](AnimationKit.Curve.md)