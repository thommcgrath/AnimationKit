# AnimationKit.FrameTarget

## Interface Methods

<pre id="method.animationstep"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> AnimationStep (Identifier <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Text</span>, Frame <span style="color: #0000FF;">As</span> AnimationKit.Frame)</span></pre>
This method is fired as often as necessary to run the animation, providing both the identifier and the new frame.

## Example Class

This is a very simple class that will display each frame given to it.

<pre><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> Paint (g <span style="color: #0000FF;">As</span> Graphics, areas() <span style="color: #0000FF;">As</span> REALbasic.Rect)<br>  <span style="color: #0000FF;">If</span> Self.CurrentFrame &lt;&gt; <span style="color: #0000FF;">Nil</span> <span style="color: #0000FF;">Then</span><br>    G.DrawPicture(Self.CurrentFrame.Image, <span style="color: #336698;">0</span>, <span style="color: #336698;">0</span>)<br>  <span style="color: #0000FF;">End</span> <span style="color: #0000FF;">If</span><br><span style="color: #0000FF;">End</span> <span style="color: #0000FF;">Sub</span><br><br><span style="color: #0000FF;">Sub</span> AnimationStep (Identifier <span style="color: #0000FF;">As</span> Text, Frame <span style="color: #0000FF;">As</span> AnimationKit.Frame)<br>  <span style="color: #800000;">// Part of the AnimationKit.FrameTarget interface.</span><br>  <br>  Self.CurrentFrame = Frame<br>  Self.Invalidate(Self.EraseBackground)<br><span style="color: #0000FF;">End</span> <span style="color: #0000FF;">Sub</span><br><br><span style="color: #0000FF;">Private</span> CurrentFrame <span style="color: #0000FF;">As</span> AnimationKit.Frame<br></span></pre>

## See Also

[AnimationKit.Frame](AnimationKit.Frame.md), [AnimationKit.FrameSet](AnimationKit.FrameSet.md), [AnimationKit.FrameTask](AnimationKit.FrameTask.md)