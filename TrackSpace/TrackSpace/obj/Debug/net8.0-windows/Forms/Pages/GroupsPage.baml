   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      ;"clr-namespace:TrackSpace.ViewModelTrackSpace.ViewModel  5      '    !TrackSpace.Forms.Pages.GroupsPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      8	viewmodel"clr-namespace:TrackSpace.ViewModel     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
         AppFont#���   5      $��18(�6(     � DataContext  5      *   $TrackSpace.ViewModel.GroupsViewModel  5   
    � 	Resources 5      (   "TrackSpace.Utils.DateTimeConverter  DateTimeConverter;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%:   &	       &	        5   
   6"     5   
   65   5      .��5      � 
�������.+�5   
   ��  . *MaterialDesignFloatingActionMiniDarkButton#��[ 5      $��45��6E   $��45��6P     Primary#���  6\    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��5      $��Bottom=�66   $��	0 0 15 15q�6Q   $��Right=�6d   ��5      �� *GoBackCommand+{�5      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5      '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5      $��30��5         Kind$ 	ArrowBack=�5       5!      �� 5"   
   
������ 
������ $��5 0 0 0q�6D   $��Right=�6V   $	��Top=�6r   $��	0 13 40 0q�6�   ��6�   �� *MinimizeCommand+.��5#        $ Minus=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5$      �� 5&   
   -   5        $��addGroupBtn��5&   I   $y�Hidden=�65   #��[ 5(      $��45��6E   $��45��6P   #���  6\   $0 *MaterialDesignFloatingActionMiniDarkButton��5)      $��Bottom=�66   $��	15 0 0 15q�6Q   $
��Left=�6d   ��5&      �� *AddGroupCommand+{�5'      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��5*        $��30��5+      $��30��5,      $ GroupAdd=�5-      5.      �� 51   
   -   5         ��Name$ closeBtn��51      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��52        $ Close=�6&   $��25��63   $��25��6>   $	 0.5Q�6J   53      �� 56   
   $
��Left=�6   $
��Bold"�57      $��40(�6   
���   �$��15,10,0,500q�64   ��56   ,   �� *64Event.IdEventNavigation.IdCompetitionNavigation.Name+57   4     5;   
   #���  6"   $ AccountGroupOutline=�6I   $��37��6d   $��38��6o   $	��Top=�6{   $��
18,200,0,0q�6�   ]� 5=   
   $��285,80,270,415q�6   .+�5>        #���  6&   $ 
MapOutline=�6M   $��41��6_   $��40��6j   $��Center=�6v   $��0,0,10,0q�6�   �� 5?      $��18(�6    �� 
IsReadOnly$
 true��6$    % !MaterialDesignFloatingHintTextBox#��[ 66     location)  #MaterialDesignThemes.Wpf.HintAssist	   Hint#	 �  6q   
   FloatingOffset$
 0,-20&�5@      ���#c5c8cc$��0q�5B      ��5A      �� *NLEvent.IdEventNavigation.IdCompetitionNavigation.PostNumberNavigation.Address+5B      5D      �� 5F   
   $��334,138,240,390q�6   
���   ���5G      �� *KIEvent.IdEventNavigation.IdCompetitionNavigation.PostNumberNavigation.City+6h   ]� 5I   
   $��538,85,70,460q�6   .+�5J        #���  6&   $ Calendar=�6M   $��41��6]   $��40��6h   $��Center=�6t   $��0,0,10,0q�6�   �� 5K      $��18(�6   $
 true��6$   #��[ 66     date#	 �  6q   $
 0,-20&�5L      ���#c5c8cc$��0q�5N      ��5M      �� *Event.IdEventNavigation.Start+ �� 	Converter# [  �� ConverterParameter$ DateOnly��5N      5P      ]� 5S   
   $��538,145,70,400q�6   .+�5T        #���  6&   $ Alarm=�6M   $��41��6Z   $��40��6e   $��Center=�6q   $��0,0,10,0q�6�   �� 5U      $��18(�6   $
 true��6$   #��[ 66     time#	 �  6q   $
 0,-20&�5V      ���#c5c8cc$��0q�5X      ��5W      �� *Event.IdEventNavigation.Start+# [ $ TimeOnly��5X      5Z      �� 5^   
    �� Orientation$ 
Horizontal=�6   $��15 75 0 430q�6.   .+�5_      �� $
��Left=�6   $
��Bold"�5`      $��30(�6   
���   ���5_   1   �� *Event.IdEventNavigation.Name+5`   !   �� 5b      $
��Left=�6   $��8 0 0 0q�60   $
��Bold"�5c      $��30(�6   
���   ���5b   A   �� *31Event.IdEventNavigation.IdCategoryNavigation.Name+5c   !   5e      �� 5h   
   $ 
Horizontal=�6   $��55,203,0,300q�6.   .+�5j      �� $
��Left=�6    	 groupsW(#��� 	 61   $
��Bold"�5k      $��22(�6   
���   �6!   �� 5m      $
��Left=�6   $��	-8 0 -8 0q�60   $
��Bold"�5n      $��22(�6   
���   ���5m   C   �� *Groups.Count+5n   !   �� 5o      $
��Left=�6   $��)��61   $
��Bold"�5p      $��22(�6   
���   �6!   5r      �� 5v   
   -   5         ��Name$ GroupsTabControl��5v       �� TabStripPlacement$
 Left=�5w      $��16,236,14,71q�6.   ��5v   /   �� *Groups+ 5x       �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value 
 	Secondary��%-  '��       �� 5y      " ��6   .�5z      ��  � ��$	 150��61   �� 5{       � ��$ 50��62   �� 5|       � ��$ Center=�6C   �� 5}       � ��$	 Top=�6A   �� 5       � ��# �  67   �� 5�       � �� 5�      �� 5�      " ��6.   .R�5�   "   �� #��z��6)   $ 10��6S   $��0 2 0 0q�6e   ._�5�   &   �� $��Center=�67   $��Center=�6T   $��Header��6o   5�   #   5�      5�       5�      P� 5�       �@��
IsSelected$
 True��68   . �5�      ��  � ��# � 
 6;   5�      5�      5�      ��5�      �� 5�      .R�5�      �� $ 
Horizontal=�6!   .+�5�      ��   groupWSpace#���  6$   6K   �� 5�      ��6$   �� *Number+5�      5�       �� ContentTemplate 5�      �� 5�      .R�5�      �� #���  6   #���  6E   $	��250��6m   $��1q�6z   $ 10��6�   $	��500��6�   ._�5�      � .+�5�      &   System.Windows.Controls.DataGrid  -   5        $��2,1,2,1q�5�   '      AlternatingRowBackground# � 
 68      AutoGenerateColumns$ False��5�         SelectionMode$ Single=�5�         SelectionUnit$ FullRow=�5�         CanUserAddRows$ False��5�         CanUserDeleteRows$ False��5�         
IsReadOnly$
 True��5�          CanUserReorderColumns$  False��5�      !   CanUserResizeColumns$! False��5�      ��5�      �� *DataContext.CompetitorEvents+ ��  UserControl"   ColumnHeaderStyle" 5�   "   �� 5�   &   =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6,   # �� BasedOn## [B 6N   .�5�   *   ��  � ��$ Center=�6W   �� 5�   *    � ��# �  6G   �� 5�   *    � ��$ 16(�6E   5�   '   $   	CellStyle$ 5�   "   �� 5�   &   *  $System.Windows.Controls.DataGridCell"  6,   .�5�   *   ��  �@��TextAlignment$ Center=�6T   �� 5�   *    � ��$ Center=�6W   �� 5�   *    � ��$ Center=�6U   �� 5�   *    � ��$ 0 3 0 0q�6C   �� 5�   *    � ��$	 100��6E   �� 5�   *    � ��$ 30��6F   �� 5�   *    � ��$ 16(�6E   5�   '   %   RowStyle% 5�   "   �� 5�   &   )	  #System.Windows.Controls.DataGridRow" 	 6,   .�5�   *   ��  � ��$ 30��6C   5�   '   &   Columns& 5�   "   0
  *System.Windows.Controls.DataGridTextColumn
  5�   &     name,  &System.Windows.Controls.DataGridColumn'   Header#' �  69   1  +System.Windows.Controls.DataGridBoundColumn(   Binding( 6Y   �� *IdCompetitorNavigation.Name+
  5�   &     surname#' �  69   ( 6\   �� * IdCompetitorNavigation.Surname+
  5�   &     category#' �  69   )   
IsReadOnly$
) True��6�   ( 6]   �� *20IdCompetitorNavigation.IdCategoryNavigation.Name+6�   
  5�   &     club#' �  69   $
) True��6�   ( 6Y   �� *.,IdCompetitorNavigation.IdClubNavigation.Name+6�   
  5�   &    
 result#' �  69   $
) True��6v   ( 6[   �� *Result+6v   5�      �� 5�        noCompetitorsToShow#���  6(   $��Center=�6U   $��Center=�6r   
�������y�5�      �� *$"DataContext.CompetitorEvents.Count+ ��  UserControl# [ 5�      5�      5�      5�      )  #MaterialDesignThemes.Wpf.DialogHost  5�   
   -   5        $��UserDetailsDialogHost��5�   $   $��-5 -5 -5 -5q�6A   *   DialogContent* 5�      �� 5�      $��16q�6   $��Center=�6)   $	��450��6F   .+�5�      ��   competitorsNo(#���  6    $
��Bold"�5�      $��0,0,0,16q�5�      $��Center=�5�      �� 5�      #���  6   #���  6E   $	��250��6m   $	��350��6z   $��1q�6�   $ 10��6�   ._�5�      � .+�5�        -   5        $��2,1,2,1q�5�   '   # � 
 68   $ False��5�      $ Extended=�5�      $ FullRow=�5�      $ False��5�      $ False��5�      $
 True��5�      $  False��5�      $! False��5�      ��5�      �� *%#DataContext.CompetitorsWithoutGroup+ ��  UserControl" 5�      �� 5�   "   "  6(   ## [B 6J   .�5�   &   ��  � ��$ Center=�6S   �� 5�   &    � ��# �  6C   �� 5�   &    � ��$ 16(�6A   5�   #   $ 5�      �� 5�   "   "  6(   .�5�   &   ��  �@��TextAlignment$ Center=�6P   �� 5�   &    � ��$ Center=�6S   �� 5�   &    � ��$ Center=�6Q   �� 5�   &    � ��$ 0 3 0 0q�6?   �� 5�   &    � ��$	 100��6A   �� 5�   &    � ��$ 30��6B   �� 5�   &    � ��$ 16(�6A   5�   #   % 5�      �� 5�   "   " 	 6(   .�5   &   ��  � ��$ 30��6?   5  #   & 5     
  5  "   #' �  65   $
) True��6�   ( 6U   �� *IdCompetitorNavigation.Name+6�   
  5  "   #' �  65   $
) True��6�   ( 6X   �� * IdCompetitorNavigation.Surname+6�   
  5  "   #' �  65   $
) True��6�   ( 6Y   �� *20IdCompetitorNavigation.IdCategoryNavigation.Name+6�   
  5  "   #' �  65   $
) True��6�   ( 6U   �� *.,IdCompetitorNavigation.IdClubNavigation.Name+6�   5     �� 5     #���  6(   $��Center=�6U   $��Center=�6r   
�������y�5     �� *+)DataContext.CompetitorsWithoutGroup.Count+ ��  UserControl# [ 5     5     �� 5     $ 
Horizontal=�6!   $��0,30,0,0q�6:   $��Center=�6L   .+�5     �� $	��150��6!     
addToGroup#���  6-   #���  6T   
������� " MaterialDesignRaisedDarkButton#��[ 5     $��Center=�5     ��5     �� *AddCompetitorCommand+5     �� 5     $	��150��6!    	 close#���  6-   #���  6O   
�������$��15 0 0 0q�6�   #��[ 5     +   CloseDialogCommand#��Z+ 5     $��Center=�5     5     5     5     �� 5!  
   -   5        $��addCompetitorBtn��5!  X   $y�Hidden=�6D   #��[ 5#     $��32��6U   $��32��6`   #���  6l   $0 *MaterialDesignFloatingActionMiniDarkButton��5$     $��
0 -50 3 20q�6F   $��Right=�6Z   ��5!     �� *AddCompetitorToGroupCommand+{�5"     �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��5%       $��25��6&   $��25��61   $	 Add=�6=   5&     �� 5(  
   -   5        $��
noGroupsTB��5(       noGroupsYetAdded#���  6'   $��Center=�6Q   $��Center=�6n   
�������y�5)     �� *Groups.Count+# [ �� 5+  
   -	   5        $��removeCompetitorBtn��5+  Z   $y�Hidden=�6F   #��[ 5-     $��32��6E   $��32��6P   #���  6\   $0 *MaterialDesignFloatingActionMiniDarkButton��5.     $��	0 50 3 20q�68   $��Right=�6K   ��5+     �� *" RemoveCompetitorFromGroupCommand+{�5,     �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��5/       $��25��6&   $��25��61   $ Minus=�6=   50     56     57     