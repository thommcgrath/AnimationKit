#tag Class
Protected Class MoveTask
Inherits AnimationKit.Task
	#tag CompatibilityFlags = ( TargetHasGUI )
	#tag Event
		Sub Perform(Final As Boolean, Time As Double)
		  If Final Then
		    Self.ApplyRect(Self.EndBounds)
		    Return
		  End If
		  
		  Dim Elapsed As Double = Self.ElapsedTime(Time)
		  Dim Duration As Double = Self.DurationInSeconds * 1000000
		  Dim RectTop As Double = Self.Curve.Evaluate(Elapsed / Duration, Self.StartBounds.Top, Self.EndBounds.Top)
		  Dim RectLeft As Double = Self.Curve.Evaluate(Elapsed / Duration, Self.StartBounds.Left, Self.EndBounds.Left)
		  Dim RectWidth As Double = Self.Curve.Evaluate(Elapsed / Duration, Self.StartBounds.Width, Self.EndBounds.Width)
		  Dim RectHeight As Double = Self.Curve.Evaluate(Elapsed / Duration, Self.StartBounds.Height, Self.EndBounds.Height)
		  
		  Self.ApplyRect(New Xojo.Core.Rect(Floor(RectLeft), Floor(RectTop), Ceil(RectWidth), Ceil(RectHeight)))
		End Sub
	#tag EndEvent

	#tag Event
		Sub Started()
		  Self.StartBounds = Self.CurrentRect()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Private Sub ApplyRect(Target As DesktopUIControl, Rect As Xojo.Core.Rect)
		  If Self.AnimateLeft Then
		    Target.Left = Rect.Left
		  End If
		  If Self.AnimateTop Then
		    Target.Top = Rect.Top
		  End If
		  If Self.AnimateWidth Then
		    Target.Width = Rect.Width
		  End If
		  If Self.AnimateHeight Then
		    Target.Height = Rect.Height
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Private Sub ApplyRect(Target As DesktopWindow, Rect As Xojo.Core.Rect)
		  If Self.AnimateLeft Then
		    Target.Left = Rect.Left
		  End If
		  If Self.AnimateTop Then
		    Target.Top = Rect.Top
		  End If
		  If Self.AnimateWidth Then
		    Target.Width = Rect.Width
		  End If
		  If Self.AnimateHeight Then
		    Target.Height = Rect.Height
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetIOS)
		Private Sub ApplyRect(Target As iOSControl, Rect As Xojo.Core.Rect)
		  // This is left in as a stub. iOSControl cannot move, so this entire
		  // task is useless on iOS.
		  
		  If Self.AnimateLeft Then
		    Target.Left = Rect.Left
		  End If
		  If Self.AnimateTop Then
		    Target.Top = Rect.Top
		  End If
		  If Self.AnimateWidth Then
		    Target.Width = Rect.Width
		  End If
		  If Self.AnimateHeight Then
		    Target.Height = Rect.Height
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetHasGUI)
		Private Sub ApplyRect(Target As RectControl, Rect As Xojo.Core.Rect)
		  If Self.AnimateLeft Then
		    Target.Left = Rect.Left
		  End If
		  If Self.AnimateTop Then
		    Target.Top = Rect.Top
		  End If
		  If Self.AnimateWidth Then
		    Target.Width = Rect.Width
		  End If
		  If Self.AnimateHeight Then
		    Target.Height = Rect.Height
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetHasGUI)
		Private Sub ApplyRect(Target As Window, Rect As Xojo.Core.Rect)
		  If Self.AnimateLeft Then
		    Target.Left = Rect.Left
		  End If
		  If Self.AnimateTop Then
		    Target.Top = Rect.Top
		  End If
		  If Self.AnimateWidth Then
		    Target.Width = Rect.Width
		  End If
		  If Self.AnimateHeight Then
		    Target.Height = Rect.Height
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (not TargetHasGUI and not TargetWeb and not TargetIOS) or  (TargetWeb) or  (TargetHasGUI) or  (TargetIOS)
		Private Sub ApplyRect(Rect As Xojo.Core.Rect)
		  Dim Item As Object = Self.Item
		  
		  If Item = Nil Then
		    Return
		  End If
		  
		  #if TargetDesktop
		    If Item IsA Window Then
		      Self.ApplyRect(Window(Item), Rect)
		      Return
		    ElseIf Item IsA RectControl Then
		      Self.ApplyRect(RectControl(Item), Rect)
		      Return
		    ElseIf Item IsA DesktopWindow Then
		      Self.ApplyRect(DesktopWindow(Item), Rect)
		      Return
		    ElseIf Item IsA DesktopUIControl Then
		      Self.ApplyRect(DesktopUIControl(Item), Rect)
		      Return
		    End If
		  #elseif TargetiOS
		    If Item IsA iOSControl Then
		      Self.ApplyRect(iOSControl(Item), Rect)
		      Return
		    End If
		  #endif
		  
		  Dim Err As New UnsupportedOperationException
		  #if TargetDesktop
		    Err.Reason = "Item for AnimationKit.MoveTask must be a Window, DesktopWindow, RectControl, or DesktopUIControl."
		  #elseif TargetiOS
		    Err.Reason = "Item for AnimationKit.MoveTask must be an iOSControl."
		  #endif
		  Raise Err
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Completed(Time As Double) As Boolean
		  Return Self.ElapsedTime(Time) >= (Self.DurationInSeconds * 1000000)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  Self.Curve = AnimationKit.Curve.CreateFromPreset(AnimationKit.Curve.Presets.Linear)
		  Self.DurationInSeconds = 1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Sub Constructor(Target As DesktopUIControl)
		  Self.Constructor()
		  Self.StartBounds = Nil
		  Self.EndBounds = Self.CurrentRect(Target)
		  Self.Item = Target
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Sub Constructor(Target As DesktopWindow)
		  Self.Constructor()
		  Self.StartBounds = Nil
		  Self.EndBounds = Self.CurrentRect(Target)
		  Self.Item = Target
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetIOS)
		Sub Constructor(Target As iOSControl)
		  Self.Constructor()
		  Self.StartBounds = Nil
		  Self.EndBounds = Self.CurrentRect(Target)
		  Self.Item = Target
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetHasGUI)
		Sub Constructor(Target As RectControl)
		  Self.Constructor()
		  Self.StartBounds = Nil
		  Self.EndBounds = Self.CurrentRect(Target)
		  Self.Item = Target
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetHasGUI)
		Sub Constructor(Target As Window)
		  Self.Constructor()
		  Self.StartBounds = Nil
		  Self.EndBounds = Self.CurrentRect(Target)
		  Self.Item = Target
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (not TargetHasGUI and not TargetWeb and not TargetIOS) or  (TargetWeb) or  (TargetHasGUI) or  (TargetIOS)
		Private Function CurrentRect() As Xojo.Core.Rect
		  Dim Item As Object = Self.Item
		  
		  If Item = Nil Then
		    Return Nil
		  End If
		  
		  #if TargetDesktop
		    If Item IsA Window Then
		      Return Self.CurrentRect(Window(Item))
		    ElseIf Item IsA RectControl Then
		      Return Self.CurrentRect(RectControl(Item))
		    ElseIf Item IsA DesktopWindow Then
		      Return Self.CurrentRect(DesktopWindow(Item))
		    ElseIf Item IsA DesktopUIControl Then
		      Return Self.CurrentRect(DesktopUIControl(Item))
		    End If
		  #elseif TargetiOS
		    If Item IsA iOSControl Then
		      Return Self.CurrentRect(iOSControl(Item))
		    End If
		  #endif
		  
		  Dim Err As New UnsupportedOperationException
		  #if TargetDesktop
		    Err.Reason = "Item for AnimationKit.MoveTask must be a Window, DesktopWindow, RectControl, or DesktopUIControl."
		  #elseif TargetiOS
		    Err.Reason = "Item for AnimationKit.MoveTask must be an iOSControl."
		  #endif
		  Raise Err
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Private Function CurrentRect(Target As DesktopUIControl) As Xojo.Core.Rect
		  Return New Xojo.Core.Rect(Target.Left, Target.Top, Target.Width, Target.Height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Private Function CurrentRect(Target As DesktopWindow) As Xojo.Core.Rect
		  Return New Xojo.Core.Rect(Target.Left, Target.Top, Target.Width, Target.Height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetIOS)
		Private Function CurrentRect(Target As iOSControl) As Xojo.Core.Rect
		  Return New Xojo.Core.Rect(Target.Left, Target.Top, Target.Width, Target.Height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetHasGUI)
		Private Function CurrentRect(Target As RectControl) As Xojo.Core.Rect
		  Return New Xojo.Core.Rect(Target.Left, Target.Top, Target.Width, Target.Height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetHasGUI)
		Private Function CurrentRect(Target As Window) As Xojo.Core.Rect
		  Return New Xojo.Core.Rect(Target.Left, Target.Top, Target.Width, Target.Height)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableValues(ParamArray Keys() As UInt64)
		  For Each Key As UInt8 In Keys
		    Self.AnimationKeys = (Self.AnimationKeys And (Not Key))
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableValues(ParamArray Keys() As UInt64)
		  For Each Key As UInt8 In Keys
		    Self.AnimationKeys = (Self.AnimationKeys Or Key)
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI) or  (TargetIOS)
		Function OriginalRect() As Xojo.Core.Rect
		  If Self.StartBounds <> Nil Then
		    Return CloneRect(Self.StartBounds)
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI)
		Sub SetDestination(Source As REALbasic.Rect)
		  Self.SetDestination(New Xojo.Core.Rect(Source.Left, Source.Top, Source.Width, Source.Height))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetHasGUI) or  (TargetIOS)
		Sub SetDestination(Source As Xojo.Core.Rect)
		  Dim CurrentBounds As Xojo.Core.Rect = Self.CurrentRect()
		  Self.EndBounds = New Xojo.Core.Rect(Source.Left, Source.Top, Source.Width, Source.Height)
		  Self.AnimationKeys = 0
		  If Self.EndBounds.Left <> CurrentBounds.Left Then
		    Self.EnableValues(Self.KeyLeft)
		  End If
		  If Self.EndBounds.Top <> CurrentBounds.Top Then
		    Self.EnableValues(Self.KeyTop)
		  End If
		  If Self.EndBounds.Width <> CurrentBounds.Width Then
		    Self.EnableValues(Self.KeyWidth)
		  End If
		  If Self.EndBounds.Height <> CurrentBounds.Height Then
		    Self.EnableValues(Self.KeyHeight)
		  End If
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return (Self.AnimationKeys And Self.KeyHeight) = Self.KeyHeight
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value Then
			    Self.EnableValues(Self.KeyHeight)
			  Else
			    Self.DisableValues(Self.KeyHeight)
			  End If
			End Set
		#tag EndSetter
		AnimateHeight As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return (Self.AnimationKeys And Self.KeyLeft) = Self.KeyLeft
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value Then
			    Self.EnableValues(Self.KeyLeft)
			  Else
			    Self.DisableValues(Self.KeyLeft)
			  End If
			End Set
		#tag EndSetter
		AnimateLeft As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return (Self.AnimationKeys And Self.KeyTop) = Self.KeyTop
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value Then
			    Self.EnableValues(Self.KeyTop)
			  Else
			    Self.DisableValues(Self.KeyTop)
			  End If
			End Set
		#tag EndSetter
		AnimateTop As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return (Self.AnimationKeys And Self.KeyWidth) = Self.KeyWidth
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  If Value Then
			    Self.EnableValues(Self.KeyWidth)
			  Else
			    Self.DisableValues(Self.KeyWidth)
			  End If
			End Set
		#tag EndSetter
		AnimateWidth As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private AnimationKeys As UInt64
	#tag EndProperty

	#tag Property, Flags = &h0
		Curve As AnimationKit.Curve
	#tag EndProperty

	#tag Property, Flags = &h0
		DurationInSeconds As Double = 1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private EndBounds As Xojo.Core.Rect
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.EndBounds.Height
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.EndBounds = New Xojo.Core.Rect(Self.EndBounds.Left, Self.EndBounds.Top, Self.EndBounds.Width, Value)
			  Self.EnableValues(Self.KeyHeight)
			End Set
		#tag EndSetter
		Height As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.EndBounds.Left
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.EndBounds = New Xojo.Core.Rect(Value, Self.EndBounds.Top, Self.EndBounds.Width, Self.EndBounds.Height)
			  Self.EnableValues(Self.KeyLeft)
			End Set
		#tag EndSetter
		Left As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private StartBounds As Xojo.Core.Rect
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.EndBounds.Top
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.EndBounds = New Xojo.Core.Rect(Self.EndBounds.Left, Value, Self.EndBounds.Width, Self.EndBounds.Height)
			  Self.EnableValues(Self.KeyTop)
			End Set
		#tag EndSetter
		Top As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Self.EndBounds.Width
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.EndBounds = New Xojo.Core.Rect(Self.EndBounds.Left, Self.EndBounds.Top, Value, Self.EndBounds.Height)
			  Self.EnableValues(Self.KeyWidth)
			End Set
		#tag EndSetter
		Width As Integer
	#tag EndComputedProperty


	#tag Constant, Name = KeyHeight, Type = Double, Dynamic = False, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KeyLeft, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KeyTop, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = KeyWidth, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AnimateHeight"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AnimateLeft"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AnimateTop"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AnimateWidth"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Cancelled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DurationInSeconds"
			Group="Behavior"
			InitialValue="1"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastFrameTime"
			Group="Behavior"
			Type="Double"
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
			Name="Started"
			Group="Behavior"
			Type="Boolean"
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
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
