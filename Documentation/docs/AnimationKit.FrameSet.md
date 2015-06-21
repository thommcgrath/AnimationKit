# AnimationKit.FrameSet

Holds a set of [AnimationKit.Frame](AnimationKit.Frame.md) objects used to animate with a [AnimationKit.FrameTask](AnimationKit.FrameTask.md).

This class supports multiple usage syntaxes. Developers can choose to use this as a class, like they would a [FolderItem](http://docs.xojo.com/index.php/FolderItem), or they can choose to use it as an array. Each of the following syntaxes are acceptable:

<pre><span style="color: #000000;"><span style="color: #0000FF;">For</span> I <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span> = <span style="color: #336698;">0</span> <span style="color: #0000FF;">To</span> Set.Count - <span style="color: #336698;">1</span><br>  <span style="color: #0000FF;">Dim</span> Frame <span style="color: #0000FF;">As</span> AnimationKit.Frame = Set.Frame(I)<br>  <span style="color: #800000;">// Do something</span><br><span style="color: #0000FF;">Next</span><br><br><span style="color: #0000FF;">For</span> I <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span> = <span style="color: #336698;">0</span> <span style="color: #0000FF;">To</span> UBound(Set)<br>  <span style="color: #0000FF;">Dim</span> Frame <span style="color: #0000FF;">As</span> AnimationKit.Frame = Set(I)<br>  <span style="color: #800000;">// Do something</span><br><span style="color: #0000FF;">Next</span><br><br><span style="color: #0000FF;">For</span> <span style="color: #0000FF;">Each</span> Frame <span style="color: #0000FF;">As</span> AnimationKit.Frame <span style="color: #0000FF;">In</span> Set<br>  <span style="color: #800000;">// Do something</span><br><span style="color: #0000FF;">Next</span></span></pre>

### Frame Dimensions

All frames in a set must match their dimensions exactly. Only when the set is empty will the set accept an image of any size. Once the set has one or more frames, attempting to add a frame with different dimensions will trigger an UnsupportedOperationException.

## Methods

<pre id="method.append"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> Append (Frame <span style="color: #0000FF;">As</span> AnimationKit.Frame)</span></pre>
Add a frame to the end the set.

<pre id="method.count"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> Count () <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span></span></pre>
Returns the number of items in the set.

<pre id="method.firstframe"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> FirstFrame () <span style="color: #0000FF;">As</span> AnimationKit.Frame</span></pre>
This is a shorthand for Frame(0).

<pre id="method.frame"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> Frame (Index <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span>) <span style="color: #0000FF;">As</span> AnimationKit.Frame</span></pre>
Returns the frame at the given 0-based index.

<pre><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> Frame (Index <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span>, <span style="color: #0000FF;">Assigns</span> Value <span style="color: #0000FF;">As</span> AnimationKit.Frame)</span></pre>
Changes the frame at the give 0-based index.

<pre id="method.indexof"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> IndexOf (Frame <span style="color: #0000FF;">As</span> AnimationKit.Frame) <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span></span></pre>
Returns the index of the given frame, or -1 if not found.

<pre id="method.insert"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> Insert (Index <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span>, Frame <span style="color: #0000FF;">As</span> AnimationKit.Frame)</span></pre>
Adds a new frame at the given index, increasing the index of each frame whose index is >= the given index.

<pre id="method.lastframe"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> LastFrame () <span style="color: #0000FF;">As</span> AnimationKit.Frame</span></pre>
This is a shorthand for Frame(Count - 1).

<pre id="method.remove"><span style="color: #000000;"><span style="color: #0000FF;">Sub</span> Remove (Index <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span>)</span></pre>
Removes the frame at the given index.

<pre id="method.reverse"><span style="color: #000000;"><span style="color: #0000FF;">Function</span> Reverse () <span style="color: #0000FF;">As</span> AnimationKit.FrameSet</span></pre>
Returns a new frame set with the frames in reverse.

## Shared Methods

<pre id="method.createfromspritesheet"><span style="color: #000000;"><span style="color: #0000FF;">Shared</span> <span style="color: #0000FF;">Function</span> CreateFromSpriteSheet (Sprites <span style="color: #0000FF;">As</span> iOSImage, RetinaSprites <span style="color: #0000FF;">As</span> iOSImage, CellWidth <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span>, CellHeight <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span>, Rows <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span>, Columns <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span>) <span style="color: #0000FF;">As</span> AnimationKit.FrameSet</span></pre>
<pre><span style="color: #000000;"><span style="color: #0000FF;">Shared</span> <span style="color: #0000FF;">Function</span> CreateFromSpriteSheet (Sprites <span style="color: #0000FF;">As</span> Picture, RetinaSprites <span style="color: #0000FF;">As</span> Picture, CellWidth <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span>, CellHeight <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span>, Rows <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span>, Columns <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">Integer</span>) <span style="color: #0000FF;">As</span> AnimationKit.FrameSet</span></pre>
These methods take a sprite grid and create a frame set. Provide the size of each cell, as well as the number of rows and columns in the grid. The input graphic will be checked to ensure dimensions match the provided cell sizes, row count, and column count. The Retina graphic is very strongly recommended, but not required. To avoid supporting retina resolutions properly, pass Nil for the second parameter.

## See Also

[AnimationKit.Frame](AnimationKit.Frame.md), [AnimationKit.FrameTarget](AnimationKit.FrameTarget.md), [AnimationKit.FrameTask](AnimationKit.FrameTask.md)