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
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      �� 5   
   
������ 
������ $��5 0 0 0q�6D   $��Right=�6V   $	��Top=�6r   $��	0 13 40 0q�6�   ��6�   �� *MinimizeCommand+.��5        $ Minus=�6&   $��25��63   $��25��6>   $	 0.5Q�6J   5      -  'MaterialDesignThemes.Wpf.AutoSuggestBox  5   
   -   5          searchClubs)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �  5   (   $��15(�6g   .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5   (      DropDownElevation$	 Dp0=�5   (    ( $MaterialDesignOutlinedAutoSuggestBox#��[ 5    (      ValueMember$ Value��5#   (   $��226,13,154,520q�6<      Suggestions 5!   (   �� *AutoSuggestBox1Suggestions+��5"   (   �� *AutoSuggestBox1Text+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� Mode$
 TwoWay=�.��5#   T      ItemTemplate 5$      �� 5%      .R�5&      ]� .+�5'      �� $��10,0,0,0q�6$   ��66   �� *Key+�� 5(      $��10,0,0,0q�6$   $	�� - ��66   �� 5)      $��10,0,0,0q�6$   ��66   �� *Value+5*      5+      .��5,   :   5-        5/   
     Primary#���  6"   $ ShieldStarOutline=�6I   $��38��6b   $��35��6m   $	��Top=�6y   $��
25,110,0,0q�6�   �� 50   
    �� Orientation$ 
Horizontal=�6   $��63,115,0,68q�6.   .+�51      ��   clubsW(#���  6   $
��Bold"�68   6L   �� 52      $��	-5 0 -5 0q�6   $
��Bold"�6G   ��6'   �� *Clubs.Count+6[   �� 53      $��)��6   $
��Bold"�6!   65   54      �� 56   
   #���  6   #���  69   $��
30,60,40,0q�6a   $	��350��6u   $��1q�6�    �� CornerRadius$ 10��6�   ._�57      � .+�58      &   System.Windows.Controls.DataGrid  $��2,1,2,1q�6     	Secondary   AlternatingRowBackground# �  6-      AutoGenerateColumns$ False��5:         SelectionMode$ Single=�5;         SelectionUnit$ FullRow=�5<         CanUserAddRows$ False��5=      $   HorizontalScrollBarVisibility$ Disabled=�5>      "   VerticalScrollBarVisibility$ Hidden=�5?      ��59      �� *Clubs+   ColumnHeaderStyle 5A      �� 5B       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    �� BasedOn# [B 6>   .�5C      ��  �� Property � �� �� Value$ Center=�6G   �� 5D       � ��# �  67   �� 5E       � ��$ 16(�65   5F         	CellStyle 5I      �� 5J      *  $System.Windows.Controls.DataGridCell"  6   .�5K      ��  �@��TextAlignment$ Center=�6D   �� 5L       � ��$ Center=�6G   �� 5M       � ��$ Center=�6E   �� 5N       � ��$ 0 3 0 0q�63   �� 5O       � ��$	 175��65   �� 5P       � ��$	 175��69   �� 5Q       � ��$ 35��6:   �� 5R       � ��$ 16(�69   5S         RowStyle 5V      �� 5W      )	  #System.Windows.Controls.DataGridRow" 	 6   .�5X      ��  � ��$ 35��6:   5Y         Columns 5\      4
  .System.Windows.Controls.DataGridTemplateColumn
  5]        name,  &System.Windows.Controls.DataGridColumn   Header# �  6-    
  CellTemplate 5^      �� 5_      .R�5`   "   �� $
��Left=�6,   $��Center=�6G   $��20 0 0 0q�6b   �� 5a      -   5         �� TextDecorations$
 None{�5a   @   
���   �.�6j   .�5b   "   �� $
��Bold"�6B   $
��Wrap=�6T   ��6,   �� *Name+��5c   .   �� 5d   2   " ��68     �� Triggers  5e   6   �� 5f   :   ! �� Binding! 6F   �� *IsMouseOver+" �� RelativeSource" �� *Self+# �� Value# True6�   .a�5g   >   ��  � ��
 ��  �6[   5h   ;   5j   3   5l   #   5m      5n      5o      5q      0  *System.Windows.Controls.DataGridTextColumn  5s       	 clubCodeNoDots# � 	 6)   $   
IsReadOnly$
$ True��6p   1  +System.Windows.Controls.DataGridBoundColumn%   Binding% 6S   �� *
ClubCode+6p     5t       
 contactNoDots# � 
 6)   $
$ True��6n   % 6R   �� *	Contact+6n     5u        competitorNumber# �  6)   $
$ True��6{   % 6U   �� *Competitors.Count+6{   5w      �� 5x        noClubs#���  6   $��Center=�6=   $��Center=�6Z   
�������y�5y      �� *Clubs.Count+& �� 	Converter#& [ 5z      5{      5�      5�      