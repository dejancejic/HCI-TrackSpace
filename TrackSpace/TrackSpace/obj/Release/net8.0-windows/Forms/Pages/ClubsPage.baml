   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  &     TrackSpace.Forms.Pages.ClubsPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  0local$clr-namespace:TrackSpace.Forms.Pages  *utilsclr-namespace:TrackSpace.Utils  $��20(�   AppFont#���     � 	Resources  ;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%   &	         .��� 
�������.+��� $
��Left=�$��18,10,0,471q� 	 clubs#���  $
��Bold"�$��40(�
���   �$	��182���� -    ��Name$ closeBtn��
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 14 0q����� *CloseCommand+.��'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�$��25��$��25�� J� Opacity$	 0.5Q��� 
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 40 0q����� *MinimizeCommand+.��  $ Minus=�$��25��$��25��$	 0.5Q�-  'MaterialDesignThemes.Wpf.AutoSuggestBox  -     searchClubs)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �  $��15(�.  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��   DropDownElevation$	 Dp0=� ( $MaterialDesignOutlinedAutoSuggestBox#��[    ValueMember$ Value��$��226,13,202,521q�   Suggestions �� *AutoSuggestBox1Suggestions+���� *AutoSuggestBox1Text+	 �� UpdateSourceTrigger$	 PropertyChanged=�
 �� Mode$
 TwoWay=�.��   ItemTemplate �� .R�]� .+��� $��10,0,0,0q����� *Key+�� $��10,0,0,0q�$	�� - ���� $��10,0,0,0q����� *Value+.����  �� Orientation$ 
Horizontal=�$��17,117,0,68q�.+���   clubsW(#���  $
��Bold"��� $��	-5 0 -5 0q�$
��Bold"����� *Clubs.Count+�� $��)��$
��Bold"���   Primary#���  #���  $��
18,10,23,0q�$	��300��$��1q� �� CornerRadius$ 10��._�� .+�&   System.Windows.Controls.DataGrid  $��2,1,2,1q�  	Secondary   AlternatingRowBackground# �     AutoGenerateColumns$ False��   SelectionMode$ Single=�   SelectionUnit$ FullRow=�   CanUserAddRows$ False��$   HorizontalScrollBarVisibility$ Disabled=�"   VerticalScrollBarVisibility$ Hidden=����� *Clubs+   ColumnHeaderStyle ��  �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"   �� BasedOn# [B .���  �� Property � �� �� Value$ Center=���  � ��# �  ��  � ��$ 16(�   	CellStyle �� *  $System.Windows.Controls.DataGridCell"  .���  �@��TextAlignment$ Center=���  � ��$ Center=���  � ��$ Center=���  � ��$ 0 3 0 0q���  � ��$	 180����  � ��$ 30����  � ��$ 16(�   RowStyle �� )	  #System.Windows.Controls.DataGridRow" 	 .���  � ��$ 30��   Columns 4
  .System.Windows.Controls.DataGridTemplateColumn
    name,  &System.Windows.Controls.DataGridColumn   Header# �   
  CellTemplate �� .R��� $
��Left=�$��20 0 0 0q��� -    �� TextDecorations$
 None{�
���   �.�.��� $
��Bold"�$
��Wrap=����� *Name+���� " ��  �� Triggers  �� ! �� Binding! �� *IsMouseOver+" �� RelativeSource" �� *Self+# �� Value# True.a���  � ��
 ��  �0  *System.Windows.Controls.DataGridTextColumn   	 clubCodeNoDots# � 	 $   
IsReadOnly$
$ True��1  +System.Windows.Controls.DataGridBoundColumn%   Binding% �� *
ClubCode+   
 contactNoDots# � 
 $
$ True��% �� *	Contact+    competitorNumber# �  $
$ True��% �� *Competitors.Count+��   noClubs#���  $��Center=�$��Center=�
�������y��� *Clubs.Count+& �� 	Converter#& [ 