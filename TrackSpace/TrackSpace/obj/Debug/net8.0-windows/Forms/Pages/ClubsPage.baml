   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      &     TrackSpace.Forms.Pages.ClubsPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      0local$clr-namespace:TrackSpace.Forms.Pages  5      $��20(�5	         AppFont#���   5      .��5      � 
�������.+�5   
   �� $
��Left=�6   $��18,10,0,415q�6+    	 clubs#���  6@   $
��Bold"�5      $��40(�6   
���   �6(   �� 5   
   -   5          ��Name$  closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      -  'MaterialDesignThemes.Wpf.AutoSuggestBox  5   
   -   5          searchClubs)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �  5   (   $��15(�6g   $��50��6u   .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5   (      DropDownElevation$	 Dp0=�5   (    ( $MaterialDesignOutlinedAutoSuggestBox#��[ 5   (      ValueMember$ Value��5   (   $��18,60,477,382q�6<      Suggestions 5   (   �� *AutoSuggestBox1Suggestions+��5   (   �� *AutoSuggestBox1Text+ �� UpdateSourceTrigger$ PropertyChanged=�	 �� Mode$	 TwoWay=�.��5   S   
   ItemTemplate
 5      �� 5      .R�5      ]� .+�5       �� $��10,0,0,0q�6$   ��66   �� *Key+�� 5!      $��10,0,0,0q�6$   $	�� - ��66   �� 5"      $��10,0,0,0q�6$   ��66   �� *Value+5#      5$      .��5%   :   5&      �� 5(   
    �� Orientation$ 
Horizontal=�6   $��
17 185 0 0q�6.   .+�5)      ��   clubsW(#���  6   $
��Bold"�68   6L   �� 5*      $��	-5 0 -5 0q�6   $
��Bold"�6G   ��6'   �� *Clubs.Count+6[   �� 5+      $��)��6   $
��Bold"�6!   65   5,      �� 5.   
     Primary#���  6   #���  69   $��18,155,23,0q�6a   $	��300��6v   $��1q�6�    �� CornerRadius$ 10��6�   ._�5/      &   System.Windows.Controls.DataGrid  $��2,1,2,1q�6     	Secondary   AlternatingRowBackground# �  6)      AutoGenerateColumns$ False��51         SelectionMode$ Single=�52         SelectionUnit$ FullRow=�53         CanUserAddRows$ False��54      $   HorizontalScrollBarVisibility$ Disabled=�55      "   VerticalScrollBarVisibility$ Hidden=�56      ��50      �� *Clubs+   ColumnHeaderStyle 58      �� 59       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    �� BasedOn# [B 6>   .�5:      ��  �� Property � �� �� Value$ Center=�6G   �� 5;       � ��# �  67   �� 5<       � ��$ 16(�65   5=         	CellStyle 5@      �� 5A      *  $System.Windows.Controls.DataGridCell"  6   .�5B      ��  �@��TextAlignment$ Center=�6D   �� 5C       � ��$ Center=�6G   �� 5D       � ��$ Center=�6E   �� 5E       � ��$ 0 3 0 0q�63   �� 5F       � ��$	 180��65   �� 5G       � ��$ 30��66   �� 5H       � ��$ 16(�65   5I         RowStyle 5L      �� 5M      )  #System.Windows.Controls.DataGridRow"  6   .�5N      ��  � ��$ 30��63   5O         Columns 5R      4	  .System.Windows.Controls.DataGridTemplateColumn	  5S        name,
  &System.Windows.Controls.DataGridColumn 
  Header# �  6-    	  CellTemplate 5T      �� 5U      .R�5V   "   �� $
��Left=�6,   $��20 0 0 0q�6G   �� 5W      -   5         �� TextDecorations$
 None{�5W   @   
���   �.�6j   .�5X   "   �� $
��Bold"�6B   $
��Wrap=�6T   ��6,   �� *Name+��5Y   .   �� 5Z   2   " ��68    �� Triggers 5[   6   �� 5\   :     �� Binding  6F   �� *IsMouseOver+! �� RelativeSource! �� *Self+" �� Value" True6�   .a�5]   >   ��  � ��
 ��  �6[   5^   ;   5`   3   5b   #   5c      5d      5e      5g      0  *System.Windows.Controls.DataGridTextColumn  5i        clubCodeNoDots# �  6)   # 
  
IsReadOnly$
# True��6p   1  +System.Windows.Controls.DataGridBoundColumn$   Binding$ 6S   �� *
ClubCode+6p     5j       	 contactNoDots# � 	 6)   $
# True��6n   $ 6R   �� *	Contact+6n     5k       
 competitorNumber# � 
 6)   $
# True��6{   $ 6U   �� *Competitors.Count+6{   5m      5n      5s      5t      