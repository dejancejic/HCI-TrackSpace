   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      1    +TrackSpace.Forms.Pages.EnterCompetitionPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	         AppFont#���   5      $��18(�6(     � 	Resources  5      1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter(   "TrackSpace.Utils.DateTimeConverter  DateTimeConverter;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%W   &	       &	      &	 &       5   
   6+     5   
   6"     5   
   65   5      .��5      � 
�������.+�5   
   ��  . *MaterialDesignFloatingActionMiniDarkButton#��[ 5      $��45��6E   $��45��6P     Primary#���  6\    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��5      $��Bottom=�66   $��	0 0 15 15q�6Q   $��Right=�6d   ��5      �� *GoBackCommand+{�5      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5      '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5      $��30��5         Kind$ 	ArrowBack=�5      5      �� 5   
   -   5         ��Name$ closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��5       �� *CloseCommand+.��5!        $ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5"      �� 5#   
   
������ 
������ $��5 0 0 0q�6D   $��Right=�6V   $	��Top=�6r   $��	0 13 40 0q�6�   ��6�   �� *MinimizeCommand+.��5$        $ Minus=�6&   $��25��63   $��25��6>   $	 0.5Q�6J   5%      �� 5'   
   $
��Left=�6   $��15,10,0,415q�6+   $
��Bold"�5(      $��40(�6   
���   ���5'   @   �� *Competition.Name+5(   !   ]� 5*   
   $��15,83,500,460q�6   .+�5+        #���  6&   $ CalendarClock=�6M   $��41��6b   $��40��6m   $��Center=�6y   $��0,0,10,0q�6�   �� 5,      $��18(�6    �� 
IsReadOnly$
 true��6$    % !MaterialDesignFloatingHintTextBox#��[ 66    	 start)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �  6q   	   FloatingOffset$	 0,-20&�5-      ���#c5c8cc$��0q�5/      ��5.      �� *Competition.Start+
 �� 	Converter#
 [ 5/      51      ]� 53   
   $��285,73,180,440q�6   .+�54        #���  6&   $ 
MapOutline=�6M   $��41��6_   $��40��6j   $��Center=�6v   $��0,0,10,0q�6�   �� 55      $��18(�6   $
 true��6$   #��[ 66     location# �  6q   $	 0,-20&�56      ���#c5c8cc$��0q�58      ��57      �� **(Competition.PostNumberNavigation.Address+58      5:      �� 5<   
   $
��Left=�6   $��334,117,0,400q�6+   
���   ���5=      �� *'%Competition.PostNumberNavigation.City+5>        5B   
   #���  6"   $ CalendarStarOutline=�6I   $��38��6d   $��38��6o   $��
21,170,0,0q�6{   �� 5D   
   $
��Left=�6   $��63,175,0,370q�6+    
	 events#��� 	 6B   $
��Bold"�5E      $��22(�6   
���   �6!     5G   
   #���  6"   $ RunFast=�6I   $��38��6X   $��38��6c   $��285,170,0,0q�6o   �� 5H   
   $��Right=�6   $��0,175,295,351q�6,    
 competitorsNo(#��� 
 6D   $
��Bold"�5I      $��22(�6   
���   �6!   �� 5K   
   #���  6   #���  69   $
��Left=�5L      $��
25,210,0,0q�6.   $	��Top=�6B   $	��300��6Z   $��1q�6g    �� CornerRadius$ 10��6{   ._�5M      � .+�5N      &   System.Windows.Controls.DataGrid  -   5          Name$ dataGrid��5N      $��2,1,2,1q�6-     	Secondary   AlternatingRowBackground# �  6?      AutoGenerateColumns$ False��5Q         SelectionMode$ Single=�5R         CanUserSortColumns$ false��5S         CanUserResizeColumns$ False��5T         CanUserReorderColumns$ False��5U         CanUserDeleteRows$ False��5V         SelectionUnit$ FullRow=�5W         CanUserAddRows$ False��5X      $   HorizontalScrollBarVisibility$ Disabled=�5Y      "   VerticalScrollBarVisibility$ Hidden=�5Z      ��5O      �� *Competition.Events+   ColumnHeaderStyle 5\      �� 5]       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6     �� BasedOn# [B 6B   .�5^      ��  �� Property � �� �� Value$ Center=�6K   �� 5_       � ��# �  6;   �� 5`       � ��$ 16(�69   5a         	CellStyle 5d      �� 5e      *  $System.Windows.Controls.DataGridCell"  6    .�5f      ��  �@��TextAlignment$ Center=�6H   �� 5g       � ��$ Center=�6K   �� 5h       � ��$ Center=�6I   �� 5i       � ��$ 0 3 0 0q�67   �� 5j       � ��$	 100��69   �� 5k       � ��$ 30��6:   �� 5l       � ��$ 16(�69   5m         RowStyle 5p      �� 5q      )	  #System.Windows.Controls.DataGridRow" 	 6    .�5r      ��  � ��$ 30��67   5s         Columns 5v      0
  *System.Windows.Controls.DataGridTextColumn
  5w       	 event,  &System.Windows.Controls.DataGridColumn    Header#  �  6-   !   
IsReadOnly$
! True��6g   1  +System.Windows.Controls.DataGridBoundColumn"   Binding" 6N   �� *Name+6g   
  5x        category#  �  6-   $
! True��6   " 6Q   �� *IdCategoryNavigation.Name+6   5|      �� 5}      $��10(�6     noEvents#���  6*   $��Center=�6L   $��Center=�6i   
�������y�5~      �� *Competition.Events.Count+#
 [ 5      5�      �� 5�   
   #���  6   #���  69   $	��450��6a   $��Right=�5�      $��
0,210,25,0q�6.   $	��Top=�5�      $	��300��6*   $��1q�67   $ 10��6K   ._�5�      � .+�5�        -   5        $ dataGridCompetitors��5�      $��2,1,2,1q�68   # �  6J   $ False��5�      $ Single=�5�      $ False��5�      $ FullRow=�5�      $ False��5�      $ False��5�      $ False��5�      $ False��5�      $ Disabled=�5�      $ Hidden=�5�      ��5�      �� *EntryModels+ 5�      �� 5�      "  6    # [B 6B   .�5�      ��  � ��$ Center=�6K   �� 5�       � ��# �  6;   �� 5�       � ��$ 16(�69   5�       5�      �� 5�      "  6    .�5�      ��  �@��TextAlignment$ Center=�6H   �� 5�       � ��$ Center=�6K   �� 5�       � ��$ Center=�6I   �� 5�       � ��$ 0 3 0 0q�67   �� 5�       � ��$	 120��69   �� 5�       � ��$ 30��6:   �� 5�       � ��$ 16(�69   5�       5�      �� 5�      " 	 6    .�5�      ��  � ��$ 30��67   5�       5�      
  5�        name#  �  6-   $
! True��6q   " 6M   �� *Competitor.Name+6q   
  5�        surname#  �  6-   $
! True��6w   " 6P   �� *Competitor.Surname+6w   
  5�      #  �  6-   $
! True��6�   " 6Q   �� *&$Competitor.IdCategoryNavigation.Name+6�   4  .System.Windows.Controls.DataGridTemplateColumn  5�      $   ��61   #   CellTemplate# 5�      �� 5�   "   .R�5�   &   �� $��checkBox��6/   -   5        $��	20,-3,0,0q�5�   l   
���   �$ d� 	IsChecked$ 6?   �� *	IsChecked+% �� Mode$% TwoWay=�5�   J   5�   #   5�      5�      �� 5�        noCompetitorsToShow#���  6   $��Center=�6J   $��Center=�6g   
�������y�5�      �� *EntryModels.Count+#
 [ 5�      5�      �� 5�   
   -   5        $ confirmEntires��5�      $��	0,0,15,15q�6*   $��Center=�6=   $��Bottom=�6[     confirmEntries#���  5�      #���  5�      ���#ffffff$��18(�5�      $	��190��5�      $��45��5�      +  %MaterialDesignThemes.Wpf.ButtonAssist&   CornerRadius$& 22��5�      ��6/   �� *ConfirmEntriesCommand+6[   5�      5�      