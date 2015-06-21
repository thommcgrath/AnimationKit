# AnimationKit.Scrollable

This is an interface that can be implemented by custom classes which can be scrolled. It allows the class to be animated with the [AnimationKit.ScrollTask](AnimationKit.ScrollTask.md) class.

## Interface Methods

<pre id="method.scrollmaximum"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> ScrollMaximum () <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span></span></pre>
Return the current maximum scroll value.

<pre><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> ScrollMaximum (<span style="color: #0000FF;">Assigns</span> Value <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span>)</span></pre>
Set the new maximum scroll value.

<pre id="method.scrollminimum"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> ScrollMinimum () <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span></span></pre>
Return the current minimum scroll value.

<pre><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> ScrollMinimum (<span style="color: #0000FF;">Assigns</span> Value <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span>)</span></pre>
Set the new minimum scroll value.

<pre id="method.scrollposition"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> ScrollPosition () <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span></span></pre>
Return the current scroll position.

<pre><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> ScrollPosition (<span style="color: #0000FF;">Assigns</span> Value <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Double</span>)</span></pre>
Set the new scroll position.

## See Also

[AnimationKit.ScrollTask](AnimationKit.ScrollTask.md)