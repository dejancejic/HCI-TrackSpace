   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      ;"clr-namespace:TrackSpace.ViewModelTrackSpace.ViewModel  5      '    !TrackSpace.Forms.Pages.GroupsPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      8	viewmodel"clr-namespace:TrackSpace.ViewModel     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
         AppFont#���   5      $��18(�6(     � DataContext  5      *   $TrackSpace.ViewModel.GroupsViewModel  5   
    � 	Resources 5      (   "TrackSpace.Utils.DateTimeConverter  DateTimeConverter;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%:   &	       &	        5   
   6"     5   
   65   5      .��5      � 
�������.+�5   
   ��  . *MaterialDesignFloatingActionMiniDarkButton#��[ 5      $��45��6E   $��45��6P     Primary#���  6\    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��5      $��Bottom=�66   $��	0 0 15 15q�6Q   $��Right=�6d   ��5      �� *GoBackCommand+{�5      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5      '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5      $��30��5         Kind$ 	ArrowBack=�5       5!      �� 5#   
   -   5        $��addGroupBtn��5#   I   $y�Hidden=�65   #��[ 5%      $��45��6E   $��45��6P   #���  6\   $0 *MaterialDesignFloatingActionMiniDarkButton��5&      $��Bottom=�66   $��	15 0 0 15q�6Q   $
��Left=�6d   ��5#      �� *AddGroupCommand+{�5$      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��5'        $��30��5(      $��30��5)      $ GroupAdd=�5*      5+      �� 5.   
   -   5         ��Name$ closeBtn��5.      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5/        $ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   50      �� 53   
   $
��Left=�6   $
��Bold"�54      $��40(�6   
���   �$��15,10,0,500q�64   ��53   ,   �� *64Event.IdEventNavigation.IdCompetitionNavigation.Name+54   4   �� 57   
   $��
0 70 270 0q�6    �� Orientation$ Vertical=�6)   $��Right=�6@   .+�58      �� $4��.pack://application:,,,/Resources/trackIcon.png��6   $��50��6L   $��50��6W   6e   �� 59      $ 
Horizontal=�6   .+�5:      �� $��Center=�6   ��65   �� *NLEvent.IdEventNavigation.IdCompetitionNavigation.PostNumberNavigation.Address+6�   �� 5;      $��,��6   $��-7 0 0 0q�6$   68   5<      �� 5=      ��6   �� *KIEvent.IdEventNavigation.IdCompetitionNavigation.PostNumberNavigation.City+6t   5>      �� 5@   
   $��	0 70 80 0q�6   $ Vertical=�6(   $��Right=�6?   .+�5A      �� $7��1pack://application:,,,/Resources/dateTimeIcon.png��6   $��50��6O   $��50��6Z   6h   �� 5B      $ 
Horizontal=�6   .+�5C      �� $��Center=�6   
���   ���5D      �� *75Event.IdEventNavigation.IdCompetitionNavigation.Start+	 �� 	Converter#	 [ 
 �� ConverterParameter$
 DateOnly��5E      5G      �� 5H      $��DemiBold"�6�   $��Center=�5I      ��5H      �� *Event.IdEventNavigation.Start+#	 [ $
 TimeOnly��5J      5K      �� 5M   
   $ 
Horizontal=�6   $��15 75 0 430q�6.   .+�5N      �� $
��Left=�6   $
��Bold"�5O      $��30(�6   
���   ���5N   1   �� *Event.IdEventNavigation.Name+5O   !   �� 5Q      $
��Left=�6   $��8 0 0 0q�60   $
��Bold"�5R      $��30(�6   
���   ���5Q   A   �� *31Event.IdEventNavigation.IdCategoryNavigation.Name+5R   !   5T      �� 5W   
   $ 
Horizontal=�6   $��15,190,0,300q�6.   .+�5X      �� $
��Left=�6     groupsW(#���  61   $
��Bold"�5Y      $��22(�6   
���   �6!   �� 5[      $
��Left=�6   $��	-8 0 -8 0q�60   $
��Bold"�5\      $��22(�6   
���   ���5[   C   �� *Groups.Count+5\   !   �� 5]      $
��Left=�6   $��)��61   $
��Bold"�5^      $��22(�6   
���   �6!   5`      �� 5d   
   -   5         ��Name$ GroupsTabControl��5d       �� TabStripPlacement$
 Left=�5e      $��16,236,14,71q�6.   ��5d   /   �� *Groups+ 5f       �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value  	Secondary��%-  '��       �� 5g      " ��6   .�5h      ��  � ��$	 150��61   �� 5i       � ��$ 50��62   �� 5j       � ��$ Center=�6C   �� 5k       � ��$	 Top=�6A   �� 5m       � ��# �  67   �� 5n       � �� 5o      �� 5p      " ��6.   .R�5q   "   �� #��z��6)   $ 10��6S   $��0 2 0 0q�6e   ._�5r   &   �� $��Center=�67   $��Center=�6T   $��Header��6o   5s   #   5t      5v       5w      P� 5x       �@��
IsSelected$
 True��68   . �5y      ��  � ��# �  6;   5z      5|      5}      ��5~      �� 5      .R�5�      �� $ 
Horizontal=�6!   .+�5�      ��   groupWSpace#���  6$   6K   �� 5�      ��6$   �� *Number+5�      5�       �� ContentTemplate 5�      �� 5�      .R�5�      �� #���  6   #���  6E   $	��250��6m   $��1q�6z   $ 10��6�   ._�5�      � .+�5�      &   System.Windows.Controls.DataGrid  -   5        $��2,1,2,1q�5�   '      AlternatingRowBackground# �  68      AutoGenerateColumns$ False��5�         SelectionMode$ Single=�5�         SelectionUnit$ FullRow=�5�         CanUserAddRows$ False��5�         CanUserDeleteRows$ False��5�         
IsReadOnly$
 True��5�         CanUserReorderColumns$ False��5�         CanUserResizeColumns$ False��5�      ��5�      �� *DataContext.CompetitorEvents+ ��  UserControl   ColumnHeaderStyle 5�   "   �� 5�   &   =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6,     �� BasedOn#  [B 6N   .�5�   *   ��  � ��$ Center=�6W   �� 5�   *    � ��# �  6G   �� 5�   *    � ��$ 16(�6E   5�   '   !   	CellStyle! 5�   "   �� 5�   &   *  $System.Windows.Controls.DataGridCell"  6,   .�5�   *   ��  �@��TextAlignment$ Center=�6T   �� 5�   *    � ��$ Center=�6W   �� 5�   *    � ��$ Center=�6U   �� 5�   *    � ��$ 0 3 0 0q�6C   �� 5�   *    � ��$	 100��6E   �� 5�   *    � ��$ 30��6F   �� 5�   *    � ��$ 16(�6E   5�   '   "   RowStyle" 5�   "   �� 5�   &   )  #System.Windows.Controls.DataGridRow"  6,   .�5�   *   ��  � ��$ 30��6C   5�   '   #   Columns# 5�   "   0	  *System.Windows.Controls.DataGridTextColumn	  5�   &     name,
  &System.Windows.Controls.DataGridColumn$ 
  Header#$ �  69   1  +System.Windows.Controls.DataGridBoundColumn%   Binding% 6Y   �� *IdCompetitorNavigation.Name+	  5�   &    	 surname#$ � 	 69   % 6\   �� * IdCompetitorNavigation.Surname+	  5�   &    
 category#$ � 
 69   & 
  
IsReadOnly$
& True��6�   % 6]   �� *20IdCompetitorNavigation.IdCategoryNavigation.Name+6�   	  5�   &     club#$ �  69   $
& True��6�   % 6Y   �� *.,IdCompetitorNavigation.IdClubNavigation.Name+6�   	  5�   &    
 result#$ �  69   $
& True��6v   % 6[   �� *Result+6v   5�      �� 5�        noCompetitorsToShow#���  6(   $��Center=�6U   $��Center=�6r   
�������y�5�      �� *$"DataContext.CompetitorEvents.Count+ ��  UserControl#	 [ 5�      5�      5�      5�      )  #MaterialDesignThemes.Wpf.DialogHost  5�   
   -   5        $��UserDetailsDialogHost��5�   $   '   DialogContent' 5�      �� 5�      $��16q�6   $��Center=�6)   $	��450��6F   .+�5�      ��   competitorsNo(#���  6    $
��Bold"�5�      $��0,0,0,16q�5�      $��Center=�5�      �� 5�      #���  6   #���  6E   $	��250��6m   $	��350��6z   $��1q�6�   $ 10��6�   ._�5�      � .+�5�        -   5        $��2,1,2,1q�5�   '   # �  68   $ False��5�      $ Extended=�5�      $ FullRow=�5�      $ False��5�      $ False��5�      $
 True��5�      $ False��5�      $ False��5�      ��5�      �� *%#DataContext.CompetitorsWithoutGroup+ ��  UserControl 5�      �� 5�   "   "  6(   #  [B 6J   .�5�   &   ��  � ��$ Center=�6S   �� 5�   &    � ��# �  6C   �� 5�   &    � ��$ 16(�6A   5�   #   ! 5�      �� 5�   "   "  6(   .�5�   &   ��  �@��TextAlignment$ Center=�6P   �� 5�   &    � ��$ Center=�6S   �� 5�   &    � ��$ Center=�6Q   �� 5�   &    � ��$ 0 3 0 0q�6?   �� 5�   &    � ��$	 100��6A   �� 5�   &    � ��$ 30��6B   �� 5�   &    � ��$ 16(�6A   5�   #   " 5�      �� 5�   "   "  6(   .�5�   &   ��  � ��$ 30��6?   5�   #   # 5�      	  5�   "   #$ �  65   $
& True��6�   % 6U   �� *IdCompetitorNavigation.Name+6�   	  5�   "   #$ � 	 65   $
& True��6�   % 6X   �� * IdCompetitorNavigation.Surname+6�   	  5�   "   #$ � 
 65   $
& True��6�   % 6Y   �� *20IdCompetitorNavigation.IdCategoryNavigation.Name+6�   	  5�   "   #$ �  65   $
& True��6�   % 6U   �� *.,IdCompetitorNavigation.IdClubNavigation.Name+6�   5�      �� 5�      #���  6(   $��Center=�6U   $��Center=�6r   
�������y�5�      �� *+)DataContext.CompetitorsWithoutGroup.Count+ ��  UserControl#	 [ 5�      5�      �� 5�      $ 
Horizontal=�6!   $��0,30,0,0q�6:   $��Center=�6L   .+�5      �� $	��150��6!     
addToGroup#���  6-   #���  6T   
������� " MaterialDesignRaisedDarkButton#��[ 5     $��Center=�5     ��5     �� *AddCompetitorCommand+5     �� 5     $	��150��6!    	 close#���  6-   #���  6O   
�������$��15 0 0 0q�6�   #��[ 5     (   CloseDialogCommand#��Z( 5     $��Center=�5     5
     5     5     �� 5  
   -   5        $��addCompetitorBtn��5  X   $y�Hidden=�6D   #��[ 5     $��32��6U   $��32��6`   #���  6l   $0 *MaterialDesignFloatingActionMiniDarkButton��5     $��
0 -50 3 20q�6F   $��Right=�6Z   ��5     �� *AddCompetitorToGroupCommand+{�5     �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��5       $��25��6&   $��25��61   $	 Add=�6=   5     �� 5  
   -   5        $��
noGroupsTB��5       noGroupsYetAdded#���  6'   $��Center=�6Q   $��Center=�6n   
�������y�5     �� *Groups.Count+#	 [ �� 5  
   -	   5        $��removeCompetitorBtn��5  Z   $y�Hidden=�6F   #��[ 5     $��32��6E   $��32��6P   #���  6\   $0 *MaterialDesignFloatingActionMiniDarkButton��5     $��	0 50 3 20q�68   $��Right=�6K   ��5     �� *" RemoveCompetitorFromGroupCommand+{�5     �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��5       $��25��6&   $��25��61   $ Minus=�6=   5     5$     5%     