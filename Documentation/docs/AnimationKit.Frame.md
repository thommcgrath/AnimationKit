# AnimationKit.Frame

## Constructors

<pre><span style="color: #000000;">Image <span style="color: #0000FF;">As</span> iOSImage, RetinaImage <span style="color: #0000FF;">As</span> iOSImage</span></pre>
<pre><span style="color: #000000;">Image <span style="color: #0000FF;">As</span> Picture, RetinaImage <span style="color: #0000FF;">As</span> Picture</span></pre>
Creates a new frame with the provided graphic. If a retina version is provided (which it should be) it must match exactly 2x the width and height as the standard graphic.

## Methods

<pre id="method.dimensions"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> Dimensions () <span style="color: #0000FF;">As</span> Xojo.Core.Size</span></pre>
Returns the width and height of the standard graphic.

## Properties

<pre id="property.image"><span style="color: #000000;">Image <span style="color: #0000FF;">As</span> iOSImage <span style="color: #800000;">// Read Only</span></span></pre>
<pre><span style="color: #000000;">Image <span style="color: #0000FF;">As</span> Picture <span style="color: #800000;">// Read Only</span></span></pre>
The standard resolution graphic.

<pre id="property.retinaimage"><span style="color: #000000;">RetinaImage <span style="color: #0000FF;">As</span> iOSImage <span style="color: #800000;">// Read Only</span></span></pre>
<pre><span style="color: #000000;">RetinaImage <span style="color: #0000FF;">As</span> Picture <span style="color: #800000;">// Read Only</span></span></pre>
The double resolution graphic.

## See Also

[AnimationKit.FrameSet](AnimationKit.FrameSet.md), [AnimationKit.FrameTarget](AnimationKit.FrameTarget.md), [AnimationKit.FrameTask](AnimationKit.FrameTask.md)