   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      *    $TrackSpace.Forms.Pages.EventInfoPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	         AppFont#���   5      $��18(�6*     � 	Resources  5      1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter(   "TrackSpace.Utils.DateTimeConverter  DateTimeConverter+   %TrackSpace.Utils.GroupNumberConverter  GroupNumberConverter;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%t   &	       &	      &	 &     &	 9       5   
   6+     5   
   6"     5   
   6D     5   
   65   5      .��5      � 
�������.+�5   
   ��  . *MaterialDesignFloatingActionMiniDarkButton#��[ 5      $��45��6E   $��45��6P     Primary#���  6\    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��5      $��Bottom=�66   $��	0 0 15 15q�6Q   $��Right=�6d   ��5      �� *GoBackCommand+{�5      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5      '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5      $��30��5         Kind$ 	ArrowBack=�5      5      �� 5    
   -   5         ��Name$ closeBtn��5       
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5!        $ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5"      �� 5#   
   
������ 
������ $��5 0 0 0q�6D   $��Right=�6V   $	��Top=�6r   $��	0 13 40 0q�6�   ��6�   �� *MinimizeCommand+.��5$        $ Minus=�6&   $��25��63   $��25��6>   $	 0.5Q�6J   5%      �� 5'   
   $
��Left=�6   $
��Bold"�5(      $��40(�6   
���   �$��15,10,0,500q�64   ��5'   ,   �� *,*SelectedEvent.IdCompetitionNavigation.Name+5(   4   ]� 5,   
   $��285,80,270,415q�6   .+�5-        #���  6&   $ 
MapOutline=�6M   $��41��6_   $��40��6j   $��Center=�6v   $��0,0,10,0q�6�   �� 5.      $��18(�6    �� 
IsReadOnly$
 true��6$    % !MaterialDesignFloatingHintTextBox#��[ 66     location)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �  6q   	   FloatingOffset$	 0,-20&�5/      ���#c5c8cc$��0q�51      ��50      �� *DBSelectedEvent.IdCompetitionNavigation.PostNumberNavigation.Address+51      53      �� 55   
   $��334,138,240,390q�6   
���   ���56      �� *A?SelectedEvent.IdCompetitionNavigation.PostNumberNavigation.City+6f   ]� 5:   
   $��538,85,70,460q�6   .+�5;        #���  6&   $ Calendar=�6M   $��41��6]   $��40��6h   $��Center=�6t   $��0,0,10,0q�6�   �� 5<      $��18(�6   $
 true��6$   #��[ 66    	 date# � 	 6q   $	 0,-20&�5=      ���#c5c8cc$��0q�5?      ��5>      �� *SelectedEvent.Start+
 �� 	Converter#
 [  �� ConverterParameter$ DateOnly��5?      5A      ]� 5D   
   $��538,145,70,400q�6   .+�5E        #���  6&   $ Alarm=�6M   $��41��6Z   $��40��6e   $��Center=�6q   $��0,0,10,0q�6�   �� 5F      $��18(�6   $
 true��6$   #��[ 66    
 time# � 
 6q   $	 0,-20&�5G      ���#c5c8cc$��0q�5I      ��5H      �� *SelectedEvent.Start+#
 [ $ TimeOnly��5I      5K      �� 5Q   
    �� Orientation$ 
Horizontal=�6   $��15 75 0 430q�6.   .+�5R      �� $
��Left=�6   $
��Bold"�5S      $��30(�6   
���   ���5R   1   �� *SelectedEvent.Name+5S   !   �� 5U      $
��Left=�6   $��8 0 0 0q�60   $
��Bold"�5V      $��30(�6   
���   ���5U   A   �� *)'SelectedEvent.IdCategoryNavigation.Name+5V   !   5X      �� 5\   
   -   5         ��Name$ GroupsStackPanel��5\      $y�Hidden=�6/   $��Right=�6C   $��0,198,50,300q�6_   $ 
Horizontal=�6u   .+�5]        $ AccountGroupOutline=�6&   $��40��6A   $��45��6L   #���  6X   $��0 -3 0 0q�6   �� 5^      $��5 10 0 0q�6   $��20(�6*   �� 5_   
   -   5         �� TextDecorations$
 None{�5_   ,   .�6C   .�5`      �� $
��Bold"�6   ��6+   �� *(&SelectedEvent.RunningEvent.GroupNumber+#
 [ ��5b      �� 5c       �� 
TargetType" ��6$   .�5d   "   ��  �� Property � �� �� Value
 �   �6O    �� Triggers 5e   "   �� 5f   &    �� Binding 62   �� *IsMouseOver+ �� *Self+ �� Value True6x   .a�5g   *   ��  � ��# �  6G   5h   '   5j      5l      5m      5n      5o      �� 5v   
   $ 
Horizontal=�6   $��15,200,0,300q�6.   .+�5w        $ RunFast=�6&   $��40��65   $��37��6@   #���  6L   $��0 -5 0 0q�6s   �� 5x      $
��Left=�6     	entriesW(#���  61   $
��Bold"�5y      $��22(�6   
���   �6!   �� 5{      $
��Left=�6   $��	-7 0 -7 0q�60   $
��Bold"�5|      $��22(�6   
���   ���5{   C   �� *&$SelectedEvent.CompetitorEvents.Count+5|   !   �� 5}      $
��Left=�6   $��)��61   $
��Bold"�5~      $��22(�6   
���   �6!   5�      )  #MaterialDesignThemes.Wpf.DialogHost  5�   
   -   5          Name$ UserDetailsDialogHost��5�   $   $��-5 -5 -5 -5q�6C      DialogContent 5�      �� 5�      $��16q�6   $��Center=�6)   $	��400��6F   .+�5�      ��   competitorDetails#���  6    $
��Bold"�5�      $��0,0,0,16q�5�      $��Center=�5�      �� 5�      $��80��6   $��80��6(    �� CornerRadius$ 40��64     PrimaryHueMidBrush#���  5�      $��Center=�5�      $��0,0,0,16q�6.   ._�5�        $ AccountCircleOutline=�62   $��80��5�   &   $��80��61   $��Center=�5�   &   $��Center=�5�   &   5�      �� 5�      $ 
Horizontal=�6!   $
��Left=�6:   $��10,8,0,8q�6U   .+�5�      ��   nameDot#���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *SelectedCompetitor.Name+5�      �� 5�      $�� ��6$   �� 5�      $��Center=�5�      ��5�   $   �� *SelectedCompetitor.Surname+5�      5�      �� 5�      $ 
Horizontal=�6!   $
��Left=�6:   $��	10,28,0,8q�6U   .+�5�      ��   categoryDot#���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *.,SelectedCompetitor.IdCategoryNavigation.Name+5�      5�      �� 5�      $ 
Horizontal=�6!   $
��Left=�6:   $��10,8,0,8q�6U   .+�5�      ��  
 DoBDot#���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *SelectedCompetitor.Dob+ �� StringFormat$ {0:dd.MM.yyyy.}��5�      5�      �� 5�      $ 
Horizontal=�6!   $
��Left=�6:   $��10,8,0,8q�6U   .+�5�      ��   	genderDot#���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *SelectedCompetitor.Pol+#
 [ 5�      5�      �� 5�      -   5        $��resultPanel��5�   :   $ 
Horizontal=�6!   $y�Hidden=�6M   $
��Left=�6a   $��10,8,0,8q�6|   .+�5�      ��   	resultDot#���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      -   5         ��Name$ NameTextBox��5�      $	��150��5�   "   $��10 0 0 0q�6.     updateResult   
HelperText# �  5�       
 result# �  5�      ��5�   @   �� *Result.Result+.��5�   =   5�      �� 5�      -   5        $��updateResultBtn��5�   >   $	��100��6!   $��Update��6-   $y�Hidden=�6U   #���  6i   
������� " MaterialDesignRaisedDarkButton#��[ 5�      $��Center=�5�      $��10,0,0,0q�5�      ��5�      �� *UpdateResultCommand+5�      5�      �� 5�      $	��120��6    	 close#���  6)   #���  6K   
�������#��[ 5�         CloseDialogCommand#��Z 5�      $��Center=�5�      $��0,30,0,0q�5�      5�      .��5�      �� #���  6   #���  6<   $��18,170,23,0q�6d   $	��280��6y   $��1q�6�   $ 10��6�   ._�5�      � .+�5�      &   System.Windows.Controls.DataGrid  $��2,1,2,1q�6     	Secondary   AlternatingRowBackground# �  60      AutoGenerateColumns$ False��5�         SelectionMode$ Single=�5�         SelectionUnit$ FullRow=�5�          CanUserAddRows$  False��5�      !   CanUserDeleteRows$! False��5�      "   
IsReadOnly$
" True��5�      #   CanUserReorderColumns$# False��5�      $   CanUserResizeColumns$$ False��5�      $%   HorizontalScrollBarVisibility$
% Auto=�5�      "&   VerticalScrollBarVisibility$& Hidden=�5�      ��5�      �� *Events+'   ColumnHeaderStyle' 5�      �� 5�      =	  7System.Windows.Controls.Primitives.DataGridColumnHeader" 	 6$   ( �� BasedOn#( [B	 6F   .�5�   "   ��  � ��$ Center=�6O   �� 5�   "    � ��# �  6?   �� 5�   "    � ��$ 16(�6=   5�      )   	CellStyle) 5�      �� 5�      *
  $System.Windows.Controls.DataGridCell" 
 6$   .�5�   "   -   5        �� 5�   "    �@��TextAlignment$ Center=�6L   �� 5�   "    � ��$ Center=�6O   �� 5�   "    � ��$ Center=�6M   �� 5�   "    � ��$ Center=�6F   �� 5�   "    � ��$ 0 3 0 0q�6;   �� 5�   "    � ��$	 123��6=   �� 5�   "    � ��$ 30��6;   �� 5�   "    � ��$ 16(�6=   5�      *   RowStyle* 5      �� 5     )  #System.Windows.Controls.DataGridRow"  6$   .�5  "   ��  � ��$ 30��6;   5     +   Columns+ 5     4  .System.Windows.Controls.DataGridTemplateColumn  5       orderNumber,  &System.Windows.Controls.DataGridColumn,   Header#, �  65   -   Width5  /System.Windows.Controls.DataGridLengthConverter$	- 100 6\   .   CellTemplate. 5  "   �� 5	  &   .R�5
  *   �� / �� TextAlignment$
/ Left=�64   $��45 0 0 0q�6I   ��6[   �� *Order+5  '   5     0  *System.Windows.Controls.DataGridTextColumn  5       name#, �  61   0   
IsReadOnly$
0 True��6�   1  +System.Windows.Controls.DataGridBoundColumn1   Binding1 6Q   �� *IdCompetitorNavigation.Name+6�     5       surname#, �  61   $
0 True��6�   1 6T   �� * IdCompetitorNavigation.Surname+6�     5       category#, �  61   $
0 True��6�   1 6U   �� *20IdCompetitorNavigation.IdCategoryNavigation.Name+6�     5       club#, �  61   $
0 True��6�   1 6Q   �� *.,IdCompetitorNavigation.IdClubNavigation.Name+6�     5     #, �  61   $
0 True��6n   1 6S   �� *Result+6n   5     �� 5       noEntriesYet#���  6    $��Center=�6F   $��Center=�6c   
�������y�5     �� *Events.Count+#
 [ 5     5     5     5     5     