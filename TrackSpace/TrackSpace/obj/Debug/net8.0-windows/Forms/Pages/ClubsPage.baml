   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      &     TrackSpace.Forms.Pages.ClubsPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      0local$clr-namespace:TrackSpace.Forms.Pages  5         AppFont#���   5
      .��5      � 
�������.+�5   
   �� $
��Left=�6   $��15,10,0,415q�6+    	 clubs#���  6@   $
��Bold"�5      $��40(�6   
���   �6(   �� 5   
   -   5          ��Name$  closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      -  'MaterialDesignThemes.Wpf.AutoSuggestBox  5   
   -   5        )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Search Club��5   (   $��15(�6U   $��50��6c   .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5   (      DropDownElevation$	 Dp0=�5   (    ( $MaterialDesignOutlinedAutoSuggestBox#��[ 5   (      ValueMember$ Value��5   (   $��13,60,477,382q�6<      Suggestions 5   (   �� *AutoSuggestBox1Suggestions+��5   (   �� *AutoSuggestBox1Text+ �� UpdateSourceTrigger$ PropertyChanged=�	 �� Mode$	 TwoWay=�.��5   S   
   ItemTemplate
 5      �� 5      .R�5      ]� .+�5      �� $��10,0,0,0q�6$   ��66   �� *Key+�� 5       $��10,0,0,0q�6$   $	�� - ��66   �� 5!      $��10,0,0,0q�6$   ��66   �� *Value+5"      5#      .��5$   :   5%      &   System.Windows.Controls.DataGrid  5(   
   $��
10,80,10,0q�6   $	��300��6'      AutoGenerateColumns$ False��5*         SelectionMode$ Single=�5+         SelectionUnit$ FullRow=�5,         CanUserAddRows$ False��5-      ��5)      �� *Clubs+   Columns 5/      4  .System.Windows.Controls.DataGridTemplateColumn  51        name,  &System.Windows.Controls.DataGridColumn   Header# �  6)      CellTemplate 52      �� 53      .R�55      �� �� 56      -   5         �� TextDecorations$
 None{�56   =   .�6T   .�57      �� ��6(   �� *Name+��58   *   �� 59   .    �� 
TargetType" ��64    �� Triggers 5:   2   �� 5<   6    �� Binding 6B   �� *IsMouseOver+ �� RelativeSource �� *Self+ �� Value True6�   .a�5=   :   ��  �� Property � ��  Primary �� Value# �  6W   5>   7   5@   /   5B      5C      5D      5E      5G      0  *System.Windows.Controls.DataGridTextColumn  5H        clubCodeNoDots# �  6%      
IsReadOnly$
 True��6l   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6O   �� *
ClubCode+6l     5I        contactNoDots# �  6%   $
 True��6j    6N   �� *	Contact+6j     5J        competitorNumber# �  6%   $
 True��6v    6Q   �� *CompetitorNumber+6v   5L      5P      5Q      