# The ZAZ Animation Kit Version 3

Animation Kit is a powerful animation framework for Xojo projects. All animations are asynchronous and driven by time, rather than by a number of iterations or changes.

Animation Kit includes task subclasses to power window and control movements and resizes, change scroll positions, and sequence sprites. Developer classes can implement an interface to allow their own light animations, or create custom task subclasses to provide any form of animation necessary.

The framework is simple enough to execute animations with a single line of code, while being powerful enough to handle any animation the developer requires.

## Requirements

Animation Kit utilizes the new Xojo Framework made available in 2015 Release 1. All projects can compile and use the framework, but not every feature is supported in all projects.

## Installation

Download the Animation Kit project, open the `Animation Kit.xojo_binary_project` file, then copy the `AnimationKit` module into your project.

## Getting Started

Animation can be started with a simple `Animate` shorthand method.

<pre>
<span style="color: #000000;">PushButton1.Animate(<span style="color: #0000FF;">New</span> Xojo.Core.Rect(PushButton1.Left, PushButton1.Top, <span style="color: #336698;">100</span>, PushButton1.Height), <span style="color: #006633;">0.2</span>)</span>
</pre>

This will cause the button PushButton1 to adjust to 100 points wide. Since the Left, Top, and Height values do not change, those values will not be animated.

The same job can be done more explicitly, which is also more flexible.

<pre>
<span style="color: #000000;"><span style="color: #0000FF;">Dim</span> Task <span style="color: #0000FF;">As</span> <span style="color: #0000FF;">New</span> AnimationKit.MoveTask(PushButton1)<br>Task.DurationInSeconds = <span style="color: #006633;">0.25</span><br>Task.Width = <span style="color: #336698;">100</span><br>Task.Run</span>
</pre>

Both variants will behave exactly the same.

## Next Steps

Explore the [AnimationKit.MoveTask](AnimationKit.MoveTask.md), [AnimationKit.ScrollTask](AnimationKit.ScrollTask.md), and [AnimationKit.Curve](AnimationKit.Curve.md) classes for more customizable animations.

Custom control developers should explore the [AnimationKit.ValueAnimator](AnimationKit.ValueAnimator.md) and [AnimationKit.Scrollable](AnimationKit.Scrollable.md) interfaces.

Developers interested in sprite-based animations should explore the [AnimationKit.Frame](AnimationKit.Frame.md), [AnimationKit.FrameSet](AnimationKit.FrameSet.md), and [AnimationKit.FrameTask](AnimationKit.FrameTask.md) classes.

If you are upgrading from a previous version of Animation Kit, [see this migration guide](Migrating.md).