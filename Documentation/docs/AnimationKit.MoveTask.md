# AnimationKit.MoveTask

Inherits from [AnimationKit.Task](AnimationKit.Task.md). Only available to Desktop projects.

This class is used for manipulating the size and position of windows and controls, probably the most used class in the framework.

## Constructors

<pre><span style="color: #000000;">Target <span style="color: #0000FF;">As</span> RectControl</span></pre>
Creates the task with the specified control set to the Item property. The Left, Top, Width, and Height properties will be set to the control's current position.

<pre><span style="color: #000000;">Target <span style="color: #0000FF;">As</span> Window</span></pre>
Creates the task with the specified window set to the Item property. The Left, Top, Width, and Height properties will be set to window's current position.

## Properties

<pre id="property.animateheight"><span style="color: #000000;">AnimateHeight <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Boolean</span> = <span style="color: #0000FF;">False</span></span></pre>
When true, the target's Height property will be animated.

<pre id="property.animateleft"><span style="color: #000000;">AnimateLeft <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Boolean</span> = <span style="color: #0000FF;">False</span></span></pre>
When true, the target's Left property will be animated.

<pre id="property.animatetop"><span style="color: #000000;">AnimateTop <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Boolean</span> = <span style="color: #0000FF;">False</span></span></pre>
When true, the target's Top property will be animated.

<pre id="property.animatewidth"><span style="color: #000000;">AnimateWidth <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Boolean</span> = <span style="color: #0000FF;">False</span></span></pre>
When true, the target's Width property will be animated.

<pre id="property.curve"><span style="color: #000000;">Curve <span style="color: #0000FF;">As</span> AnimationKit.Curve = AnimationKit.Curve.CreateLinear()</span></pre>
The timing curve to use for this animation.

<pre id="property.durationinseconds"><span style="color: #000000;">DurationInSeconds <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span> = <span style="color: #006633;">1.0</span></span></pre>
Number of seconds the animation will require to complete.

<pre id="property.height"><span style="color: #000000;">Height <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span> = Target.Height</span></pre>
The final height of the target. Changing this value automatically sets AnimateHeight to True.

<pre id="property.left"><span style="color: #000000;">Left <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span> = Target.Left</span></pre>
The final left position of the target. Changing this value automatically sets AnimateLeft to True.

<pre id="property.top"><span style="color: #000000;">Top <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span> = Target.Top</span></pre>
The final top position of the target. Changing this value automatically sets AnimateTop to True.

<pre id="property.width"><span style="color: #000000;">Width <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span> = Target.Width</span></pre>
The final width of the target. Changing this value automatically sets AnimateWidth to True.

## Methods

<pre id="method.enablevalues"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> EnableValues (<span style="color: #0000FF;">ParamArray</span> Keys() <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">UInt64</span>)</span></pre>
Pass one or more of the Key constants to enable property animations in bulk.

<pre id="method.disablevalues"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> DisableValues (<span style="color: #0000FF;">ParamArray</span> Keys() <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">UInt64</span>)</span></pre>
Pass one or more of the Key constants to disable property animations in bulk.

<pre id="method.originalrect"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> OriginalRect () <span style="color: #0000FF;">As</span> Xojo.Core.Rect</span></pre>
Returns the starting rect of the target. May return Nil if the animation has not started.

<pre id="method.setdestination"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> SetDestination (Source <span style="color: #0000FF;">As</span> Xojo.Core.Rect)</span></pre>
Sets the destination of the target using the provided rect. Also accepts a REALbasic.Rect in desktop projects. Only values which differ from the control's current position will be animated. Automatically sets the value of all four Animate properties accordingly.

## Constants

<pre><span style="color: #000000;"><span style="color: #0000FF;">Const</span> KeyHeight = <span style="color: #336698;" id="constant.keyheight">8</span><br><span style="color: #0000FF;">Const</span> KeyLeft = <span style="color: #336698;" id="constant.keyleft">1</span><br><span style="color: #0000FF;">Const</span> KeyTop = <span style="color: #336698;" id="constant.keytop">2</span><br><span style="color: #0000FF;">Const</span> KeyWidth = <span style="color: #336698;" id="constant.keywidth">4</span><br></span></pre>

## iOS Projects

This task has all the functionality necessary to support iOSControl animations, but the iOSControl cannot be moved. So the class is currently disabled on iOS despite being designed to work for iOS projects.

The reason iOSControls cannot be moved is because of the auto layout system. Moving a control requires manipulating the restraints around it, which is not immediately practical. Support for iOSControl animations may come in the future.

## Web Projects

This task does not support WebControl due to the high latency of web communications. In its current form, the latency prohibits the animation from working in any reasonable manner. In the future, it may be possible to translate the task properties into a CSS animation so the browser can run the animation entirely client side.

## See Also

[AnimationKit.Curve](AnimationKit.Curve.md)