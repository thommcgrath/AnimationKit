#tag Module
Protected Module AnimationKit
	#tag CompatibilityFlags = ( not TargetHasGUI and not TargetWeb and not TargetIOS ) or ( TargetWeb ) or ( TargetHasGUI ) or ( TargetIOS )
	#tag Method, Flags = &h0
		Sub Animate(Extends Target As AnimationKit.FrameTarget, Frames As AnimationKit.FrameSet, DurationInSeconds As Double, Looping As Boolean)
		  Dim Task As New AnimationKit.FrameTask(Target, Frames)
		  Task.DurationInSeconds = DurationInSeconds
		  Task.Looping = Looping
		  Task.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Animate(Extends Target As AnimationKit.ValueAnimator, Identifier As Text, StartValue As Double, EndValue As Double, DurationInSeconds As Double, Curve As AnimationKit.Curve = Nil)
		  Dim Task As New AnimationKit.ValueTask(Target, Identifier, StartValue, EndValue)
		  Task.DurationInSeconds = DurationInSeconds
		  If Curve <> Nil Then
		    Task.Curve = Curve
		  End If
		  Task.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Sub Animate(Extends Target As DesktopUIControl, Destination As REALbasic.Rect, DurationInSeconds As Double, Curve As AnimationKit.Curve = Nil)
		  Dim Task As New AnimationKit.MoveTask(Target)
		  Task.DurationInSeconds = DurationInSeconds
		  Task.SetDestination(Destination)
		  If Curve <> Nil Then
		    Task.Curve = Curve
		  End If
		  Task.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Sub Animate(Extends Target As DesktopUIControl, Destination As Xojo.Core.Rect, DurationInSeconds As Double, Curve As AnimationKit.Curve = Nil)
		  Dim Task As New AnimationKit.MoveTask(Target)
		  Task.DurationInSeconds = DurationInSeconds
		  Task.SetDestination(Destination)
		  If Curve <> Nil Then
		    Task.Curve = Curve
		  End If
		  Task.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Sub Animate(Extends Target As DesktopWindow, Destination As REALbasic.Rect, DurationInSeconds As Double, Curve As AnimationKit.Curve = Nil)
		  Dim Task As New AnimationKit.MoveTask(Target)
		  Task.DurationInSeconds = DurationInSeconds
		  Task.SetDestination(Destination)
		  If Curve <> Nil Then
		    Task.Curve = Curve
		  End If
		  Task.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Sub Animate(Extends Target As DesktopWindow, Destination As Xojo.Core.Rect, DurationInSeconds As Double, Curve As AnimationKit.Curve = Nil)
		  Dim Task As New AnimationKit.MoveTask(Target)
		  Task.DurationInSeconds = DurationInSeconds
		  Task.SetDestination(Destination)
		  If Curve <> Nil Then
		    Task.Curve = Curve
		  End If
		  Task.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Sub Animate(Extends Target As RectControl, Destination As REALbasic.Rect, DurationInSeconds As Double, Curve As AnimationKit.Curve = Nil)
		  Dim Task As New AnimationKit.MoveTask(Target)
		  Task.DurationInSeconds = DurationInSeconds
		  Task.SetDestination(Destination)
		  If Curve <> Nil Then
		    Task.Curve = Curve
		  End If
		  Task.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Sub Animate(Extends Target As RectControl, Destination As Xojo.Core.Rect, DurationInSeconds As Double, Curve As AnimationKit.Curve = Nil)
		  Dim Task As New AnimationKit.MoveTask(Target)
		  Task.DurationInSeconds = DurationInSeconds
		  Task.SetDestination(Destination)
		  If Curve <> Nil Then
		    Task.Curve = Curve
		  End If
		  Task.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Sub Animate(Extends Target As Window, Destination As REALbasic.Rect, DurationInSeconds As Double, Curve As AnimationKit.Curve = Nil)
		  Dim Task As New AnimationKit.MoveTask(Target)
		  Task.DurationInSeconds = DurationInSeconds
		  Task.SetDestination(Destination)
		  If Curve <> Nil Then
		    Task.Curve = Curve
		  End If
		  Task.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Sub Animate(Extends Target As Window, Destination As Xojo.Core.Rect, DurationInSeconds As Double, Curve As AnimationKit.Curve = Nil)
		  Dim Task As New AnimationKit.MoveTask(Target)
		  Task.DurationInSeconds = DurationInSeconds
		  Task.SetDestination(Destination)
		  If Curve <> Nil Then
		    Task.Curve = Curve
		  End If
		  Task.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CloneRect(Source As Xojo.Core.Rect) As Xojo.Core.Rect
		  Return New Xojo.Core.Rect(Source.Left, Source.Top, Source.Width, Source.Height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NewFrameTask(Extends Target As AnimationKit.FrameTarget) As AnimationKit.FrameTask
		  Return New AnimationKit.FrameTask(Target, New AnimationKit.FrameSet)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Function NewMoveTask(Extends Target As DesktopUIControl) As AnimationKit.MoveTask
		  Return New AnimationKit.MoveTask(Target)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Function NewMoveTask(Extends Target As DesktopWindow) As AnimationKit.MoveTask
		  Return New AnimationKit.MoveTask(Target)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Function NewMoveTask(Extends Target As RectControl) As AnimationKit.MoveTask
		  Return New AnimationKit.MoveTask(Target)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Function NewMoveTask(Extends Target As Window) As AnimationKit.MoveTask
		  Return New AnimationKit.MoveTask(Target)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SharedCoordinator() As AnimationKit.Coordinator
		  If SharedCoordinatorRef = Nil Then
		    SharedCoordinatorRef = New AnimationKit.Coordinator
		  End If
		  
		  Return SharedCoordinatorRef
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UBound(Frames As AnimationKit.FrameSet) As Integer
		  Return Frames.UBound
		End Function
	#tag EndMethod


	#tag Note, Name = Documentation
		Documentation can be found at http://docs.thezaz.com/animationkit/3.0.0
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private SharedCoordinatorRef As AnimationKit.Coordinator
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
