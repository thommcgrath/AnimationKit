# Migrating from Animation Kit 2.5

Animation Kit was originally released in late 2007. Version 2 was only a few months later in March 2008. Back then, Xojo was known as REALbasic. REALbasic evolved into REAL Studio, which evolved into Xojo.

A lot has changed since then. Xojo has namespace support now, so prefixing classes with AK has become no longer necessary. AddHandler allows Animation Kit to eliminate the AKTimer subclass completely. And of course new ideas have been thought up. In order to push Animation Kit forward, the old framework had to be torn down.

This guide is designed to help developers who want to transition to the new Animation Kit. Transitioning is recommended, as older versions had a potential referencing problem that could cause crashes or exceptions if a window is closed while an animation running.

## Requirements

Animation Kit 3 absolutely requires Xojo 2015 Release 1 or newer. This version was developed as a universal set of code compatible with all project types, and therefore makes extensive use of the New Xojo Framework.

## AKCore

AKCore is replaced by [AnimationKit.Coordinator](AnimationKit.Coordinator.md) but developers will not need to worry about the coordinator like they would the AKCore module.

There is no replacement for AKCore.Start and AKCore.Stop. These jobs are handled automatically.

AKCore.SplitGraphic has been replaced by the CreateFromSpriteSheet shared method on [AnimationKit.FrameSet](AnimationKit.FrameSet.md).

The NewFrameTask and NewMoveTask extension methods should work exactly as-is.

AKCore.ReverseFrames has been replaced by the Reverse method on [AnimationKit.FrameSet](AnimationKit.FrameSet.md).

The ContentRect methods have no replacement. However, Xojo has a built in [Bounds property](http://docs.xojo.com/index.php/Window.Bounds) on Window which is similar.

The Animate extension methods will work similarly, but move tasks will need to use a [curve](AnimationKit.Curve.md) instead of an easing constant, and frame tasks will require a [AnimationKit.FrameSet](AnimationKit.FrameSet.md) instead of an array of pictures.

There is no AKCompletionDelegate anymore. Use the Completed event as part of [AnimationKit.Task](AnimationKit.Task.md) instead.

## AKEasing

The AKEasing module has been completely replaced by the [AnimationKit.Curve](AnimationKit.Curve.md) class. Nearly all of the easing methods are still available, but Bounce and Elastic had to be dropped due to limitations of cubic bezier curves.

## AKTimer

AKTimer is gone completely. Developers should not have been mucking with this class anyway.

## AKTask

The AKTask class has been replaced by [AnimationKit.Task](AnimationKit.Task.md).

To solve crashing and memory leak problems brought on by improper reference handling, AnimationKit.Task uses weak references instead of AKTask's strong references.

HasCompleted is now known as Completed.

HasStarted is now known as Started.

RunTime is now known as ElapsedTime.

Start, StartTime, UniqueID, ConflictResolutionAction, and OnCompleteAction have been removed. OnCompleteAction can be replaced by the Completed event, but the others have no replacement.

## AKFrameTask

AKFrameTask has been replaced by [AnimationKit.FrameTask](AnimationKit.FrameTask.md).

Duration is now known as DurationInSeconds.

Frames is now a [AnimationKit.FrameSet](AnimationKit.FrameSet.md) object, however it can still be used as an array.

CurrentFrame has been removed. Developers are encouraged to get the current frame from the AnimationStep method the [AnimationKit.FrameTarget](AnimationKit.FrameTarget.md) interface provides.

## AKMoveTask and AKResizeTask

Both AKMoveTask and AKResizeTask have been replaced by [AnimationKit.MoveTask](AnimationKit.MoveTask.md).

AKMoveTask would always animate all four position properties: Left, Top, Width, and Height. For some animations, this would be a problem, as another animation might be trying to change a property that the original animation never intended to change. That's why AKResizeTask was introduced, so only the Width and Height would change. This was still somewhat limiting.

Instead, AnimationKit.MoveTask has four properties: AnimateLeft, AnimateTop, AnimateWidth, and AnimateHeight. These are automatically set to true when the developer changes the Left, Top, Width, and Height values, respectively. For the most part, developers will not need to worry about manually controlling these four Animate properties, but they are available just in case.

Delta, GetCurrentRect, and SetRectNow have been removed.

Duration is now known as DurationInSeconds.

EasingMethod has been replaced by Curve, and the type changed to [AnimationKit.Curve](AnimationKit.Curve.md).

NewRect has been removed. Instead, developers can use the SetDestination method, which automatically sets the Animate properties according to the value differences. There are also Left, Top, Width, and Height properties to use.

## AKScrollTask

AKScrollTask has been replaced by [AnimationKit.ScrollTask](AnimationKit.ScrollTask.md).

Value is now known as Position.

Duration is now known as DurationInSeconds.

EasingMethod has been replaced by Curve, and the type changed to [AnimationKit.Curve](AnimationKit.Curve.md).

OriginalValue has been removed with no replacement.

## AKFrameTarget

AKFrameTarget has been replaced by [AnimationKit.FrameTarget](AnimationKit.FrameTarget.md).

ChangeFrame is now known as AnimationStep. The method is given an identifier provided by the driving task and the new frame, instead of the frame index and picture.

## AKAnimationCanvas

AKAnimationCanvas has been removed. Developers can replace the class using the [AnimationKit.FrameTarget](AnimationKit.FrameTarget.md) interface with minimal effort.