   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  ;"clr-namespace:TrackSpace.ViewModelTrackSpace.ViewModel  '    !TrackSpace.Forms.Pages.GroupsPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6local$clr-namespace:TrackSpace.Forms.Pages     0utilsclr-namespace:TrackSpace.Utils     8	viewmodel"clr-namespace:TrackSpace.ViewModel     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     AppFont#���   $��18(�  � DataContext  *   $TrackSpace.ViewModel.GroupsViewModel   � 	Resources (   "TrackSpace.Utils.DateTimeConverter  DateTimeConverter;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%   &	       &	          .��� 
�������.+���  . *MaterialDesignFloatingActionMiniDarkButton#��[ $��45��$��45��  Primary#���   � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��$��Bottom=�$��	0 0 15 15q�$��Right=����� *GoBackCommand+{��� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��'  !MaterialDesignThemes.Wpf.PackIcon  $��30��$��30��   Kind$ 	ArrowBack=��� 
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 40 0q����� *MinimizeCommand+.��  $ Minus=�$��25��$��25�� J� Opacity$	 0.5Q��� -   $��addGroupBtn��$y�Hidden=�#��[ $��45��$��45��#���  $0 *MaterialDesignFloatingActionMiniDarkButton��$��Bottom=�$��	15 0 0 15q�$
��Left=����� *AddGroupCommand+{��� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��  $��30��$��30��$ GroupAdd=��� -    ��Name$ closeBtn��
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 14 0q����� *CloseCommand+.��  $ Close=�$��25��$��25��$	 0.5Q��� $
��Left=�$
��Bold"�$��40(�
���   �$��15,10,0,500q����� *64Event.IdEventNavigation.IdCompetitionNavigation.Name+�� $��
0 70 270 0q� �� Orientation$ Vertical=�$��Right=�.+��� $4��.pack://application:,,,/Resources/trackIcon.png��$��50��$��50���� $ 
Horizontal=�.+��� $��Center=����� *NLEvent.IdEventNavigation.IdCompetitionNavigation.PostNumberNavigation.Address+�� $��,��$��-7 0 0 0q��� ���� *KIEvent.IdEventNavigation.IdCompetitionNavigation.PostNumberNavigation.City+�� $��	0 70 80 0q�$ Vertical=�$��Right=�.+��� $7��1pack://application:,,,/Resources/dateTimeIcon.png��$��50��$��50���� $ 
Horizontal=�.+��� $��Center=�
���   ����� *75Event.IdEventNavigation.IdCompetitionNavigation.Start+	 �� 	Converter#	 [ 
 �� ConverterParameter$
 DateOnly���� $��DemiBold"�$��Center=����� *Event.IdEventNavigation.Start+#	 [ $
 TimeOnly���� $ 
Horizontal=�$��15 75 0 430q�.+��� $
��Left=�$
��Bold"�$��30(�
���   ����� *Event.IdEventNavigation.Name+�� $
��Left=�$��8 0 0 0q�$
��Bold"�$��30(�
���   ����� *31Event.IdEventNavigation.IdCategoryNavigation.Name+�� $ 
Horizontal=�$��15,190,0,300q�.+��� $
��Left=�  groupsW(#���  $
��Bold"�$��22(�
���   ��� $
��Left=�$��	-8 0 -8 0q�$
��Bold"�$��22(�
���   ����� *Groups.Count+�� $
��Left=�$��)��$
��Bold"�$��22(�
���   ��� -    ��Name$ GroupsTabControl�� �� TabStripPlacement$
 Left=�$��16,236,14,71q����� *Groups+  �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value  	Secondary��%7  '��       �� " ��.���  � ��$	 150����  � ��$ 50����  � ��$ Center=���  � ��$	 Top=���  � ��# �  ��  � �� �� " ��.R��� #��z��$ 10��$��0 2 0 0q�._��� $��Center=�$��Center=�$��Header�� P�  �@��
IsSelected$
 True��. ���  � ��# �  ���� .R��� $ 
Horizontal=�.+���   groupWSpace#���  �� ���� *Number+ �� ContentTemplate �� .R��� #���  #���  $	��250��$��1q�$ 10��._�� .+�&   System.Windows.Controls.DataGrid  -   $��2,1,2,1q�   AlternatingRowBackground# �     AutoGenerateColumns$ False��   SelectionMode$ Single=�   SelectionUnit$ FullRow=�   CanUserAddRows$ False��   CanUserDeleteRows$ False��   
IsReadOnly$
 True��   CanUserReorderColumns$ False��   CanUserResizeColumns$ False������ *DataContext.CompetitorEvents+ ��  UserControl   ColumnHeaderStyle �� =  7System.Windows.Controls.Primitives.DataGridColumnHeader"    �� BasedOn#  [B .���  � ��$ Center=���  � ��# �  ��  � ��$ 16(�!   	CellStyle! �� *  $System.Windows.Controls.DataGridCell"  .���  �@��TextAlignment$ Center=���  � ��$ Center=���  � ��$ Center=���  � ��$ 0 3 0 0q���  � ��$	 100����  � ��$ 30����  � ��$ 16(�"   RowStyle" �� )  #System.Windows.Controls.DataGridRow"  .���  � ��$ 30��#   Columns# 0	  *System.Windows.Controls.DataGridTextColumn	    name,
  &System.Windows.Controls.DataGridColumn$ 
  Header#$ �  1  +System.Windows.Controls.DataGridBoundColumn%   Binding% �� *IdCompetitorNavigation.Name+	   	 surname#$ � 	 % �� * IdCompetitorNavigation.Surname+	   
 category#$ � 
 & 
  
IsReadOnly$
& True��% �� *20IdCompetitorNavigation.IdCategoryNavigation.Name+	    club#$ �  $
& True��% �� *.,IdCompetitorNavigation.IdClubNavigation.Name+	   
 result#$ �  $
& True��% �� *Result+��   noCompetitorsToShow#���  $��Center=�$��Center=�
�������y��� *$"DataContext.CompetitorEvents.Count+ ��  UserControl#	 [ )  #MaterialDesignThemes.Wpf.DialogHost  -   $��UserDetailsDialogHost��$��-5 -5 -5 -5q�'   DialogContent' �� $��16q�$��Center=�$	��450��.+���   competitorsNo(#���  $
��Bold"�$��0,0,0,16q�$��Center=��� #���  #���  $	��250��$	��350��$��1q�$ 10��._�� .+�  -   $��2,1,2,1q�# �  $ False��$ Extended=�$ FullRow=�$ False��$ False��$
 True��$ False��$ False������ *%#DataContext.CompetitorsWithoutGroup+ ��  UserControl �� "  #  [B .���  � ��$ Center=���  � ��# �  ��  � ��$ 16(�! �� "  .���  �@��TextAlignment$ Center=���  � ��$ Center=���  � ��$ Center=���  � ��$ 0 3 0 0q���  � ��$	 100����  � ��$ 30����  � ��$ 16(�" �� "  .���  � ��$ 30��# 	  #$ �  $
& True��% �� *IdCompetitorNavigation.Name+	  #$ � 	 $
& True��% �� * IdCompetitorNavigation.Surname+	  #$ � 
 $
& True��% �� *20IdCompetitorNavigation.IdCategoryNavigation.Name+	  #$ �  $
& True��% �� *.,IdCompetitorNavigation.IdClubNavigation.Name+�� #���  $��Center=�$��Center=�
�������y��� *+)DataContext.CompetitorsWithoutGroup.Count+ ��  UserControl#	 [ �� $ 
Horizontal=�$��0,30,0,0q�$��Center=�.+��� $	��150��  
addToGroup#���  #���  
������� " MaterialDesignRaisedDarkButton#��[ $��Center=����� *AddCompetitorCommand+�� $	��150�� 	 close#���  #���  
�������$��15 0 0 0q�#��[ (   CloseDialogCommand#��Z( $��Center=��� -   $��addCompetitorBtn��$y�Hidden=�#��[ $��32��$��32��#���  $0 *MaterialDesignFloatingActionMiniDarkButton��$��
0 -50 3 20q�$��Right=����� *AddCompetitorToGroupCommand+{��� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��  $��25��$��25��$	 Add=��� -   $��
noGroupsTB��  noGroupsYetAdded#���  $��Center=�$��Center=�
�������y��� *Groups.Count+#	 [ �� -	   $��removeCompetitorBtn��$y�Hidden=�#��[ $��32��$��32��#���  $0 *MaterialDesignFloatingActionMiniDarkButton��$��	0 50 3 20q�$��Right=����� *" RemoveCompetitorFromGroupCommand+{��� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��  $��25��$��25��$ Minus=�