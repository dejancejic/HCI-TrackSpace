   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:TrackSpace.Forms.UserControlsTrackSpace.Forms.UserControls  5      ?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      -    'TrackSpace.Forms.Pages.CompetitionsPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      :dataGrid+clr-namespace:TrackSpace.Forms.UserControls  5      0local$clr-namespace:TrackSpace.Forms.Pages  5      $��18(�5
         AppFont#���   6     � 	Resources  5        CustomTabItemStyle �� 
TargetType  MaterialDesignTabItem �� BasedOn �� Property  Primary �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property	 P� Value  	Secondary  MaterialDesignComboBox)  #MaterialDesignThemes.Wpf.HintAssist  year��%W  &	       7  '�� �    7  �� 5   
   " ��6+   8   .�5      ��  � ��# �  6+   �� 5       � ��$ 0 0 0 0q�6'   �� 5       � �� 5      �� 5      " ��6&   .R�5      � .+�5      �� #��z��6%   #��z��6O   $��1q�6{   $ 10��6�   ._�5   "   �� $��Header��63   $��Center=�6J   $��Center=�6g   $
��10,2q�6�   5      5      5      5       5      P� 5       �@��
IsSelected$
	 True��60   . �5      ��  � ��# �  63   5      5!      �� 5#   
   " ��6   8   .�5$      ��  �@ Hint# �  6?   5%      5&      .��5(      � 
�������.+�5)   
   ��   competitions#���  6   $
��Left=�69   $
��Bold"�6T   $��18,10,0,318q�6f   $��35(�6{   6�   �� 5+   
   -   5        
 ��Name$
 closeBtn��5+      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5,      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5-      -  'MaterialDesignThemes.Wpf.AutoSuggestBox  51   
   -   5          searchCompetitions   Hint# �  51   (   $��15(�6n   .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��53          DropDownElevation$	 Dp0=�54        (	 $MaterialDesignOutlinedAutoSuggestBox#��[	 55          ValueMember$ Value��58       $��276,10,229,523q�64      Suggestions 56       �� *AutoSuggestBox1Suggestions+��57       �� *AutoSuggestBox1Text+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�.��58   L      ItemTemplate 59      �� 5:      .R�5;      ]� .+�5<      �� $��10,0,0,0q�6$   ��66   �� *Key+�� 5=      $��10,0,0,0q�6$   $	�� - ��66   �� 5>      $��10,0,0,0q�6$   ��66   �� *Value+5?      5@      .��5A   :   5B      �� 5L   
   $��	0,80,0,-1q�6   .  (MaterialDesignThemes.Wpf.ColorZoneAssist   
Background
 ����    Mode$ PrimaryLight=�6`    "
 MaterialDesignFilledTabControl#��[
 6�     5M      ��%0   '��       7  �� 5N      " ��6   8   6-   5O      .@�5P      ��   ongoingCompetitions#���  6   $
��Bold"�6E   .��5R      >   8TrackSpace.Forms.UserControls.CompetitionDataGridControl     ItemsSource 66   �� *OngoingCompetitions+   Count 6b   �� *OngoingCompetitions.Count+5S      �� 5T        pastCompetitions#���  6   $
��Bold"�6B   .��5V         66   �� *PastCompetitions+ 6_   �� *PastCompetitions.Count+5W      5X      �� 5\   
    �� Orientation$ 
Horizontal=�6   $	��Top=�6.   $��
470 20 0 0q�6F   $	��150��6Z   .+�5]      �� #���  6     MaterialDesignRaisedButton#��[ 6g   ��6=   �� *ToggleComboBoxCommand+��5^      �� 5_      $ 
Horizontal=�6!   .+�5`        $ Filter=�62   �� 5a      $��5,0,0,0q�6%   5b      5d      �� 5e      $	��108��6[   $��10,0,0,0q�6g   ��6   �� *Years+ �� SelectedItem 65   �� *SelectedYear+y�6y   �� *IsComboBoxVisible+   BooleanToVisibilityConverter �� 	Converter# [ �� 5f      $��10,0,0,0q�6Y   ��6   �� *SelectedYear+ �� StringFormat$ Selected Year: {0}��y�6k   �� *IsYearSelected+# [ 5g      5j      5k      