   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      ;"clr-namespace:TrackSpace.ViewModelTrackSpace.ViewModel  5      '    !TrackSpace.Forms.Pages.GroupsPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      8	viewmodel"clr-namespace:TrackSpace.ViewModel     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
         AppFont#���   5      $��18(�6(     � DataContext  5      *   $TrackSpace.ViewModel.GroupsViewModel  5   
    � 	Resources 5      (   "TrackSpace.Utils.DateTimeConverter  DateTimeConverter��%   &	         5   
   6"   5      .��5      � 
�������.+�5   
   ��  . *MaterialDesignFloatingActionMiniDarkButton#��[ 5      $��45��6E   $��45��6P     Primary#���  6\    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��5      $��Bottom=�66   $��	0 0 15 15q�6Q   $��Right=�6d   ��5      �� *GoBackCommand+{�5      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5      '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5      $��30��5         Kind$ 	ArrowBack=�5      5       �� 5"   
   -   5         ��Name$ closeBtn��5"      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5#        $ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5$      �� 5'   
   $
��Left=�6   $
��Bold"�5(      $��40(�6   
���   �$��15,10,0,500q�64   ��5'   ,   �� *64Event.IdEventNavigation.IdCompetitionNavigation.Name+5(   4   �� 5+   
   $��
0 70 270 0q�6    �� Orientation$ Vertical=�6)   $��Right=�6@   .+�5,      �� $4��.pack://application:,,,/Resources/trackIcon.png��6   $��50��6L   $��50��6W   6e   �� 5-      $ 
Horizontal=�6   .+�5.      �� $��Center=�6   ��65   �� *NLEvent.IdEventNavigation.IdCompetitionNavigation.PostNumberNavigation.Address+6�   �� 5/      $��,��6   $��-7 0 0 0q�6$   68   50      �� 51      ��6   �� *KIEvent.IdEventNavigation.IdCompetitionNavigation.PostNumberNavigation.City+6t   52      �� 54   
   $��	0 70 80 0q�6   $ Vertical=�6(   $��Right=�6?   .+�55      �� $7��1pack://application:,,,/Resources/dateTimeIcon.png��6   $��50��6O   $��50��6Z   6h   �� 56      $ 
Horizontal=�6   .+�57      �� $��Center=�6   
���   ���58      �� *75Event.IdEventNavigation.IdCompetitionNavigation.Start+	 �� 	Converter#	 [ 
 �� ConverterParameter$
 DateOnly��59      5;      �� 5<      $��DemiBold"�6�   $��Center=�5=      ��5<      �� *Event.IdEventNavigation.Start+#	 [ $
 TimeOnly��5>      5?      �� 5A   
   $ 
Horizontal=�6   $��15 75 0 430q�6.   .+�5B      �� $
��Left=�6   $
��Bold"�5C      $��30(�6   
���   ���5B   1   �� *Event.IdEventNavigation.Name+5C   !   �� 5E      $
��Left=�6   $��8 0 0 0q�60   $
��Bold"�5F      $��30(�6   
���   ���5E   A   �� *31Event.IdEventNavigation.IdCategoryNavigation.Name+5F   !   5H      �� 5K   
   $ 
Horizontal=�6   $��15,190,0,300q�6.   .+�5L      �� $
��Left=�6     groupsW(#���  61   $
��Bold"�5M      $��22(�6   
���   �6!   �� 5O      $
��Left=�6   $��	-8 0 -8 0q�60   $
��Bold"�5P      $��22(�6   
���   ���5O   C   �� *Event.GroupNumber+5P   !   �� 5Q      $
��Left=�6   $��)��61   $
��Bold"�5R      $��22(�6   
���   �6!   5T      �� 5X   
   -   5         ��Name$ GroupsTabControl��5X       �� TabStripPlacement$
 Left=�5Y      $��16,236,14,71q�6.   ��5X   /   �� *Event.Groups+ 5Z       �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value  	Secondary��%-  '��       �� 5[      " ��6   .�5\      ��  � ��$	 150��61   �� 5]       � ��$ 50��62   �� 5^       � ��$ Center=�6C   �� 5_       � ��$	 Top=�6A   �� 5a       � ��# �  67   �� 5b       � �� 5c      �� 5d      " ��6.   .R�5e   "   �� #��z��6)   $ 10��6S   $��0 2 0 0q�6e   ._�5f   &   �� $��Center=�67   $��Center=�6T   $��Header��6o   5g   #   5h      5j       5k      P� 5l       �@��
IsSelected$
 True��68   . �5m      ��  � ��# �  6;   5n      5p      5q      ��5r      �� 5s      .R�5t      �� $ 
Horizontal=�6!   .+�5u      ��   groupWSpace#���  6$   6K   �� 5v      ��6$   �� *	IdGroup+5w      5x       �� ContentTemplate 5z      �� 5{      .R�5|      �� #���  6   #���  6D   $	��250��6m   $��1q�6z   $ 10��6�   ._�5}      &   System.Windows.Controls.DataGrid  $��2,1,2,1q�6#      AlternatingRowBackground# �  65      AutoGenerateColumns$ False��5   #      SelectionMode$ Single=�5�   #      SelectionUnit$ FullRow=�5�   #      CanUserAddRows$ False��5�   #      CanUserDeleteRows$ False��5�   #      
IsReadOnly$
 True��5�   #      CanUserReorderColumns$ False��5�   #      CanUserResizeColumns$ False��5�   #   ��5~      �� *DataContext.CompetitorEvents+ ��  UserControl   ColumnHeaderStyle 5�      �� 5�   "   =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6(     �� BasedOn#  [B 6J   .�5�   &   ��  � ��$ Center=�6S   �� 5�   &    � ��# �  6C   �� 5�   &    � ��$ 16(�6A   5�   #   !   	CellStyle! 5�      �� 5�   "   *  $System.Windows.Controls.DataGridCell"  6(   .�5�   &   ��  �@��TextAlignment$ Center=�6P   �� 5�   &    � ��$ Center=�6S   �� 5�   &    � ��$ Center=�6Q   �� 5�   &    � ��$ 0 3 0 0q�6?   �� 5�   &    � ��$	 100��6A   �� 5�   &    � ��$ 30��6B   �� 5�   &    � ��$ 16(�6A   5�   #   "   RowStyle" 5�      �� 5�   "   )  #System.Windows.Controls.DataGridRow"  6(   .�5�   &   ��  � ��$ 30��6?   5�   #   #   Columns# 5�      0  *System.Windows.Controls.DataGridTextColumn  5�        name,	  &System.Windows.Controls.DataGridColumn$ 	  Header#$ �  61   1
  +System.Windows.Controls.DataGridBoundColumn% 
  Binding% 6Q   �� *IdCompetitorNavigation.Name+  5�   "     surname#$ �  65   % 6X   �� * IdCompetitorNavigation.Surname+  5�   "    	 category#$ � 	 65   & 	  
IsReadOnly$
& True��6�   % 6Y   �� *20IdCompetitorNavigation.IdCategoryNavigation.Name+6�     5�       
 club#$ � 
 61   $
& True��6�   % 6Q   �� *.,IdCompetitorNavigation.IdClubNavigation.Name+6�     5�       
 result#$ �  61   $
& True��6n   % 6S   �� *Result+6n   5�      5�      5�      5�      5�      5�      