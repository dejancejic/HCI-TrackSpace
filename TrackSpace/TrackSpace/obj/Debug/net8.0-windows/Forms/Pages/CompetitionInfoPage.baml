   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      0    *TrackSpace.Forms.Pages.CompetitionInfoPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	         AppFont#���   5      $��18(�6*     � 	Resources  5      1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter(   "TrackSpace.Utils.DateTimeConverter  DateTimeConverter;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%W   &	       &	      &	 &       5   
   6+     5   
   6"     5   
   65   5      .��5      � 
�������.+�5   
   ��  . *MaterialDesignFloatingActionMiniDarkButton#��[ 5      $��45��6E   $��45��6P     Primary#���  6\    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��5      $��Bottom=�66   $��	0 0 15 15q�6Q   $��Right=�6d   ��5      �� *GoBackCommand+{�5      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5      '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5      $��30��5         Kind$ 	ArrowBack=�5      5      �� 5   
   -   5        $��	deleteBtn��5   R   $y�Hidden=�6>   #��[ 5!      $��45��6E   $��45��6P   #���  6\   $0 *MaterialDesignFloatingActionMiniDarkButton��5"      $��Bottom=�66   $��	15 0 0 15q�6Q   $
��Left=�6d   ��5      �� *DeleteCompetitionCommand+{�5       �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��5#        $��30��5$      $��30��5%      $ Delete=�5&      5'      �� 5)   
   -   5         ��Name$ closeBtn��5)      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��5*      �� *CloseCommand+.��5+        $ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5,      �� 5.   
   $
��Left=�6   $��15,10,0,415q�6+   $
��Bold"�5/      $��40(�6   
���   ���5.   @   �� *Competition.Name+5/   !     52   
   #���  6"   $��Center=�6I   $  CommentTextMultipleOutline=�6f   $��38��6�   $��38��6�   $��Center=�6�   $��20,150,54,375q�6�   �� 54   
   -   5         ��Name$ MeasureTextBlock��54      $
��Wrap=�6W   $y�	Collapsed=�6k   ��6.   �� *Competition.Description+6k   �� 55   
   -   5         ��Name$ DescriptionTextBox��55      $	��280��56      $	��280��57      $	��180��58      )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Description��59      
 �� AcceptsReturn$

 True��5:       �� 
IsReadOnly$
 True��5;       �� 	IsEnabled$ False��5<       �� TextWrapping$
 Wrap=�5>      $��5 -5 5 0q�6   " �� VerticalScrollBarVisibility$
 Auto=�5?      $��333,150,13,365q�6&   ��5=      �� *Competition.Description+5?   &   �� 5A   
   
������ 
������ $��5 0 0 0q�6D   $��Right=�6V   $	��Top=�6r   $��	0 13 40 0q�6�   ��6�   �� *MinimizeCommand+.��5B        $ Minus=�6&   $��25��63   $��25��6>   $	 0.5Q�6J   5C      ]� 5E   
   $��15,85,500,450q�6   .+�5F        #���  6&   $ CalendarClock=�6M   $��41��6b   $��40��6m   $��Center=�6y   $��0,0,10,0q�6�   �� 5G      $��18(�6   $
 true��6$    % !MaterialDesignFloatingHintTextBox#��[ 66    	 start#	 �  6q      FloatingOffset$ 0,-20&�5H      ���#c5c8cc$��0q�5J      ��5I      �� *Competition.Start+ �� 	Converter# [ 5J      5L      ]� 5P   
   $��15,125,490,365q�6   .+�5Q        #���  6&   $ 
MapOutline=�6M   $��41��6_   $��38��6j   $��Center=�6v   $��0,0,10,0q�6�   �� 5R      $��18(�6   $
 true��6$   #��[ 66     location#	 �  6q   $ 0,-20&�5S      ���#c5c8cc$��0q�5U      ��5T      �� **(Competition.PostNumberNavigation.Address+5U      5W      ]� 5Y   
   $��345,87,80,454q�6   .+�5Z        #���  6&   $ CardAccountMailOutline=�6M   $��38��6k   $��38��6v   $��Center=�6�   $��0,0,15,0q�6�   �� 5[      $��18(�6   $
 true��6$   #��[ 66    	 contactMail#	 � 	 6q   $ 0,-20&�5\      ���#c5c8cc$��0q�5^      ��5]      �� *53Competition.IdUserNavigation.IdUserNavigation.Email+5^      5`      �� 5c   
   $
��Left=�6   $��64,185,0,350q�6+   
���   ���5d      �� *'%Competition.PostNumberNavigation.City+5e      �� 5j   
    �� Orientation$ 
Horizontal=�6   $��15,230,0,301q�6.   .+�5k        #���  6&   $ CalendarStar=�6M   $��40��6a   $��36��6l   $��Center=�6x   $��	0,-17,3,0q�6�   �� 5l       
 eventsW(#��� 
 6   $��22(�69   $
��Bold"�6G   6[   �� 5m      $��	-8 0 -8 0q�6A   $��22(�6T   $
��Bold"�6b   ��6   �� *Competition.Events.Count+6v   �� 5n      $��)��6   $��22(�6    $
��Bold"�6.   6B   5p      �� 5s   
   #���  6   #���  69   $��18,200,23,0q�6a   $	��250��6v   $��1q�6�    �� CornerRadius$ 10��6�   ._�5t      � .+�5u      &   System.Windows.Controls.DataGrid  $��2,1,2,1q�6     	Secondary   AlternatingRowBackground# �  6-      AutoGenerateColumns$ False��5w         SelectionMode$ Single=�5x         SelectionUnit$ FullRow=�5y         CanUserAddRows$ False��5z      $   HorizontalScrollBarVisibility$ Disabled=�5{      "   VerticalScrollBarVisibility$ Hidden=�5|      ��5v      �� *Competition.Events+   ColumnHeaderStyle 5~      �� 5       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    �� BasedOn# [B 6>   .�5�      ��  �� Property � �� �� Value$ Center=�6G   �� 5�       � ��# �  67   �� 5�       � ��$ 16(�65   5�         	CellStyle 5�      �� 5�      *  $System.Windows.Controls.DataGridCell"  6   .�5�      ��  �@��TextAlignment$ Center=�6D   �� 5�       � ��$ Center=�6G   �� 5�       � ��$ Center=�6E   �� 5�       � ��$ Center=�6>   �� 5�       � ��$ 0 3 0 0q�63   �� 5�       � ��$	 180��65   �� 5�       � ��$ 30��66   �� 5�       � ��$ 16(�65   5�          RowStyle  5�      �� 5�      )	  #System.Windows.Controls.DataGridRow" 	 6   .�5�      ��  � ��$ 35��63   5�      !   Columns! 5�      4
  .System.Windows.Controls.DataGridTemplateColumn
  5�       	 event,  &System.Windows.Controls.DataGridColumn"   Header#" �  6-   # 
  CellTemplate# 5�      �� 5�      .R�5�   "   �� $
��Left=�6,   $��20 0 0 0q�6G   �� 5�      -   5        $ �� TextDecorations$
$ None{�5�   9   
���   �.�6c   .�5�      �� $
��Bold"�6;   $
��Wrap=�6M   ��6%   �� *Name+��5�   .   �� 5�   2   " ��68   % �� Triggers% 5�   6   �� 5�   :   & �� Binding& 6F   �� *IsMouseOver+ �� *Self+' �� Value' True6�   .a�5�   >   ��  � ��
 ��  �6[   5�   ;   5�   3   5�      5�      5�      5�      5�      0  *System.Windows.Controls.DataGridTextColumn  5�      #" �  6)   (   
IsReadOnly$
( True��6~   1  +System.Windows.Controls.DataGridBoundColumn)   Binding) 6J   �� *Start+* �� StringFormat$* 	{0:HH:mm}��6~     5�        category#" �  6)   $
( True��6{   ) 6M   �� *IdCategoryNavigation.Name+6{     5�        competitorsNo(#" �  6)   $
( True��6~   ) 6S   �� *CompetitorEvents.Count+6~   5�      �� 5�        noEvents#���  6   $��Center=�6>   $��Center=�6[   
�������y�5�      �� *Competition.Events+# [ 5�      5�      �� 5�   
   -   5        $ enterCompetitionBtn��5�      $y�Hidden=�6/   $��	0,0,15,15q�6C   $��Center=�6V   $��Bottom=�6t     enterCompetition#���  6�   #���  5�      ���#ffffff$��18(�5�      $	��190��5�      $��45��5�      +  %MaterialDesignThemes.Wpf.ButtonAssist+   CornerRadius$+ 22��5�      ��6/   �� *EnterCompetitionCommand+6]   5�      5�      