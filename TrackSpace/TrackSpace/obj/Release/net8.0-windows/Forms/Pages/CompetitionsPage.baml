   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:TrackSpace.Forms.UserControlsTrackSpace.Forms.UserControls  ?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  -    'TrackSpace.Forms.Pages.CompetitionsPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  :dataGrid+clr-namespace:TrackSpace.Forms.UserControls  0local$clr-namespace:TrackSpace.Forms.Pages  $��18(�   AppFont#���     � 	Resources    CustomTabItemStyle �� 
TargetType  MaterialDesignTabItem �� BasedOn �� Property  Primary �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property	 P� Value  	Secondary  MaterialDesignComboBox)  #MaterialDesignThemes.Wpf.HintAssist  year��%J  &	       7  '��     7  �� " ��8   .���  � ��# �  ��  � ��$ 0 0 0 0q���  � �� �� " ��.R�� .+��� #��z��#��z��$��1q�$ 10��._��� $��Header��$��Center=�$��Center=�$
��10,2q� P�  �@��
IsSelected$
	 True��. ���  � ��# �  �� " ��8   .���  �@ Hint# �  .��� 
�������.+���   competitions#���  $
��Left=�$
��Bold"�$��18,10,0,318q�$��35(��� -   
 ��Name$
 closeBtn��
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 14 0q����� *CloseCommand+.��'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�$��25��$��25�� J� Opacity$	 0.5Q��� 
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 40 0q����� *MinimizeCommand+.��  $ Minus=�$��25��$��25��$	 0.5Q�-  'MaterialDesignThemes.Wpf.AutoSuggestBox  -     searchCompetitions   Hint# �  $��15(�.  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��   DropDownElevation$	 Dp0=� (	 $MaterialDesignOutlinedAutoSuggestBox#��[	    ValueMember$ Value��$��276,10,229,523q�   Suggestions �� *AutoSuggestBox1Suggestions+���� *AutoSuggestBox1Text+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�.��   ItemTemplate �� .R�]� .+��� $��10,0,0,0q����� *Key+�� $��10,0,0,0q�$	�� - ���� $��10,0,0,0q����� *Value+.���� $��	0,80,0,-1q�.  (MaterialDesignThemes.Wpf.ColorZoneAssist   
Background
 ����    Mode$ PrimaryLight=� "
 MaterialDesignFilledTabControl#��[
   ��%   '��       7  �� " ��8   .@���   ongoingCompetitions#���  $
��Bold"�.��>   8TrackSpace.Forms.UserControls.CompetitionDataGridControl     ItemsSource �� *OngoingCompetitions+   Count �� *OngoingCompetitions.Count+��   pastCompetitions#���  $
��Bold"�.��   �� *PastCompetitions+ �� *PastCompetitions.Count+��  �� Orientation$ 
Horizontal=�$	��Top=�$��
470 20 0 0q�$	��150��.+��� #���    MaterialDesignRaisedButton#��[ ���� *ToggleComboBoxCommand+���� $ 
Horizontal=�.+�  $ Filter=��� $��5,0,0,0q��� $	��108��$��10,0,0,0q����� *Years+ �� SelectedItem �� *SelectedYear+y��� *IsComboBoxVisible+   BooleanToVisibilityConverter �� 	Converter# [ �� $��10,0,0,0q����� *SelectedYear+ �� StringFormat$ Selected Year: {0}��y��� *IsYearSelected+# [ 