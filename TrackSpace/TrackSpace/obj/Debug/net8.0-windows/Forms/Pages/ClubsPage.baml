   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      &     TrackSpace.Forms.Pages.ClubsPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      0local$clr-namespace:TrackSpace.Forms.Pages  5      *utilsclr-namespace:TrackSpace.Utils  5      $��20(�5
         AppFont#���   5        � 	Resources  5      ;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%   &	         5   
   65   5      .��5      � 
�������.+�5   
   �� $
��Left=�6   $��18,10,0,471q�6+    	 clubs#���  6@   $
��Bold"�5      $��40(�6   
���   �$	��182��6;   �� 5   
   -   5         ��Name$ closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      -  'MaterialDesignThemes.Wpf.AutoSuggestBox  5   
   -   5          searchClubs)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �  5   (   $��15(�6g   .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5   (      DropDownElevation$	 Dp0=�5   (    ( $MaterialDesignOutlinedAutoSuggestBox#��[ 5   (      ValueMember$ Value��5    (   $��226,13,202,521q�6<      Suggestions 5   (   �� *AutoSuggestBox1Suggestions+��5   (   �� *AutoSuggestBox1Text+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� Mode$
 TwoWay=�.��5    T      ItemTemplate 5!      �� 5"      .R�5#      ]� .+�5$      �� $��10,0,0,0q�6$   ��66   �� *Key+�� 5%      $��10,0,0,0q�6$   $	�� - ��66   �� 5&      $��10,0,0,0q�6$   ��66   �� *Value+5'      5(      .��5)   :   5*      �� 5,   
    �� Orientation$ 
Horizontal=�6   $��17,117,0,68q�6.   .+�5-      ��   clubsW(#���  6   $
��Bold"�68   6L   �� 5.      $��	-5 0 -5 0q�6   $
��Bold"�6G   ��6'   �� *Clubs.Count+6[   �� 5/      $��)��6   $
��Bold"�6!   65   50      �� 52   
     Primary#���  6   #���  69   $��
18,10,23,0q�6a   $	��300��6u   $��1q�6�    �� CornerRadius$ 10��6�   ._�53      � .+�54      &   System.Windows.Controls.DataGrid  $��2,1,2,1q�6     	Secondary   AlternatingRowBackground# �  6-      AutoGenerateColumns$ False��56         SelectionMode$ Single=�57         SelectionUnit$ FullRow=�58         CanUserAddRows$ False��59      $   HorizontalScrollBarVisibility$ Disabled=�5:      "   VerticalScrollBarVisibility$ Hidden=�5;      ��55      �� *Clubs+   ColumnHeaderStyle 5=      �� 5>       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    �� BasedOn# [B 6>   .�5?      ��  �� Property � �� �� Value$ Center=�6G   �� 5@       � ��# �  67   �� 5A       � ��$ 16(�65   5B         	CellStyle 5E      �� 5F      *  $System.Windows.Controls.DataGridCell"  6   .�5G      ��  �@��TextAlignment$ Center=�6D   �� 5H       � ��$ Center=�6G   �� 5I       � ��$ Center=�6E   �� 5J       � ��$ 0 3 0 0q�63   �� 5K       � ��$	 180��65   �� 5L       � ��$ 30��66   �� 5M       � ��$ 16(�65   5N         RowStyle 5Q      �� 5R      )	  #System.Windows.Controls.DataGridRow" 	 6   .�5S      ��  � ��$ 30��63   5T         Columns 5W      4
  .System.Windows.Controls.DataGridTemplateColumn
  5X        name,  &System.Windows.Controls.DataGridColumn   Header# �  6-    
  CellTemplate 5Y      �� 5Z      .R�5[   "   �� $
��Left=�6,   $��20 0 0 0q�6G   �� 5\      -   5         �� TextDecorations$
 None{�5\   @   
���   �.�6j   .�5]   "   �� $
��Bold"�6B   $
��Wrap=�6T   ��6,   �� *Name+��5^   .   �� 5_   2   " ��68     �� Triggers  5`   6   �� 5a   :   ! �� Binding! 6F   �� *IsMouseOver+" �� RelativeSource" �� *Self+# �� Value# True6�   .a�5b   >   ��  � ��
 ��  �6[   5c   ;   5e   3   5g   #   5h      5i      5j      5l      0  *System.Windows.Controls.DataGridTextColumn  5n       	 clubCodeNoDots# � 	 6)   $   
IsReadOnly$
$ True��6p   1  +System.Windows.Controls.DataGridBoundColumn%   Binding% 6S   �� *
ClubCode+6p     5o       
 contactNoDots# � 
 6)   $
$ True��6n   % 6R   �� *	Contact+6n     5p        competitorNumber# �  6)   $
$ True��6{   % 6U   �� *Competitors.Count+6{   5r      �� 5s        noClubs#���  6   $��Center=�6=   $��Center=�6Z   
�������y�5t      �� *Clubs.Count+& �� 	Converter#& [ 5u      5v      5{      5|      