   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  *    $TrackSpace.Forms.Pages.EventInfoPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6local$clr-namespace:TrackSpace.Forms.Pages     0utilsclr-namespace:TrackSpace.Utils     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     AppFont#���   $��18(�  � 	Resources  1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter(   "TrackSpace.Utils.DateTimeConverter  DateTimeConverter+   %TrackSpace.Utils.GroupNumberConverter  GroupNumberConverter;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%<   &	       &	      &	 
     &	              .��� 
�������.+���  . *MaterialDesignFloatingActionMiniDarkButton#��[ $��45��$��45��  Primary#���   � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��$��Bottom=�$��	0 0 15 15q�$��Right=����� *GoBackCommand+{��� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��'  !MaterialDesignThemes.Wpf.PackIcon  $��30��$��30��   Kind$ 	ArrowBack=��� -    ��Name$ closeBtn��
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 14 0q����� *CloseCommand+.��  $ Close=�$��25��$��25�� J� Opacity$	 0.5Q��� 
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 40 0q����� *MinimizeCommand+.��  $ Minus=�$��25��$��25��$	 0.5Q��� $
��Left=�$
��Bold"�$��40(�
���   �$��15,10,0,500q����� *,*SelectedEvent.IdCompetitionNavigation.Name+�� $��
0 70 270 0q� �� Orientation$ Vertical=�$��Right=�.+��� $4��.pack://application:,,,/Resources/trackIcon.png��$��50��$��50���� $ 
Horizontal=�.+��� $��Center=����� *DBSelectedEvent.IdCompetitionNavigation.PostNumberNavigation.Address+�� $��,��$��-7 0 0 0q��� ���� *A?SelectedEvent.IdCompetitionNavigation.PostNumberNavigation.City+�� $��	0 70 80 0q�$ Vertical=�$��Right=�.+��� $7��1pack://application:,,,/Resources/dateTimeIcon.png��$��50��$��50���� $ 
Horizontal=�.+��� $��Center=�
���   ����� *-+SelectedEvent.IdCompetitionNavigation.Start+ �� 	Converter# [ 	 �� ConverterParameter$	 DateOnly���� $��DemiBold"�$��Center=����� *SelectedEvent.Start+# [ $	 TimeOnly���� $ 
Horizontal=�$��15 75 0 430q�.+��� $
��Left=�$
��Bold"�$��30(�
���   ����� *SelectedEvent.Name+�� $
��Left=�$��8 0 0 0q�$
��Bold"�$��30(�
���   ����� *)'SelectedEvent.IdCategoryNavigation.Name+�� -   
 ��Name$
 GroupsStackPanel��$y�Hidden=�$��Right=�$��0,190,50,300q�$ 
Horizontal=�.+�  $ AccountGroup=�$��40��$��40���� $��5 10 0 0q��� -    �� TextDecorations$
 None{�.�.��� $
��Bold"�
���   ����� *(&SelectedEvent.RunningEvent.GroupNumber+# [ ����  �� 
TargetType" �� �� Triggers ��  �� Binding �� *IsMouseOver+ �� *Self+ �� Value True.a���  �� Property � �� �� Value
 ��  ��� $ 
Horizontal=�$��15,190,0,300q�.+��� $
��Left=�  	entriesW(#���  $
��Bold"�$��22(�
���   ��� $
��Left=�$��	-7 0 -7 0q�$
��Bold"�$��22(�
���   ����� *&$SelectedEvent.CompetitorEvents.Count+�� $
��Left=�$��)��$
��Bold"�$��22(�
���   �)  #MaterialDesignThemes.Wpf.DialogHost  -     Name$ UserDetailsDialogHost��$��-5 -5 -5 -5q�   DialogContent �� $��16q�$��Center=�$	��400��.+���   competitorDetails#���  $
��Bold"�$��0,0,0,16q�$��Center=��� $��80��$��80�� �� CornerRadius$ 40�� 	 PrimaryHueMidBrush#��� 	 $��Center=�$��0,0,0,16q�._�  $ AccountCircleOutline=�$��80��$��80��$��Center=�$��Center=��� $ 
Horizontal=�$
��Left=�$��10,8,0,8q�.+���  
 nameDot#��� 
 $
��Bold"�$��Center=��� $��Center=����� *SelectedCompetitor.Name+�� $�� ���� $��Center=����� *SelectedCompetitor.Surname+�� $ 
Horizontal=�$
��Left=�$��	10,28,0,8q�.+���   categoryDot#���  $
��Bold"�$��Center=��� $��Center=����� *.,SelectedCompetitor.IdCategoryNavigation.Name+�� $ 
Horizontal=�$
��Left=�$��10,8,0,8q�.+���  
 DoBDot#���  $
��Bold"�$��Center=��� $��Center=����� *SelectedCompetitor.Dob+ �� StringFormat$ {0:dd.MM.yyyy.}���� $ 
Horizontal=�$
��Left=�$��10,8,0,8q�.+���   	genderDot#���  $
��Bold"�$��Center=��� $��Center=����� *SelectedCompetitor.Pol+# [ �� -   $��resultPanel��$ 
Horizontal=�$y�Hidden=�$
��Left=�$��10,8,0,8q�.+���   	resultDot#���  $
��Bold"�$��Center=��� -    ��Name$ NameTextBox��$	��150��$��10 0 0 0q�  updateResult)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# �   
 result   Hint# �  ���� *Result.Result+.���� -   $��updateResultBtn��$	��100��$��Update��$y�Hidden=�#���  
������� " MaterialDesignRaisedDarkButton#��[ $��Center=�$��10,0,0,0q����� *UpdateResultCommand+�� $	��120�� 	 close#���  #���  
�������#��[    CloseDialogCommand#��Z $��Center=�$��0,30,0,0q�.���� #���  #���  $��18,170,23,0q�$	��280��$��1q�$ 10��._�� .+�&   System.Windows.Controls.DataGrid  $��2,1,2,1q�  	Secondary   AlternatingRowBackground# �     AutoGenerateColumns$ False��   SelectionMode$ Single=�   SelectionUnit$ FullRow=�   CanUserAddRows$ False��   CanUserDeleteRows$ False��    
IsReadOnly$
  True��!   CanUserReorderColumns$! False��"   CanUserResizeColumns$" False��$#   HorizontalScrollBarVisibility$# Disabled=�"$   VerticalScrollBarVisibility$$ Hidden=����� *Events+%   ColumnHeaderStyle% �� =	  7System.Windows.Controls.Primitives.DataGridColumnHeader" 	 & �� BasedOn#& [B	 .���  � ��$ Center=���  � ��# �  ��  � ��$ 16(�'   	CellStyle' �� *
  $System.Windows.Controls.DataGridCell" 
 .�-   ��  �@��TextAlignment$ Center=���  � ��$ Center=���  � ��$ Center=���  � ��$ 0 3 0 0q���  � ��$	 123����  � ��$ 30����  � ��$ 16(�(   RowStyle( �� )  #System.Windows.Controls.DataGridRow"  .���  � ��$ 30��)   Columns) 4  .System.Windows.Controls.DataGridTemplateColumn    orderNumber,  &System.Windows.Controls.DataGridColumn*   Header#* �  +   Width5  /System.Windows.Controls.DataGridLengthConverter$	+ 100 ,   CellTemplate, �� .R��� - �� TextAlignment$
- Left=�$��45 0 0 0q����� *Order+0  *System.Windows.Controls.DataGridTextColumn    name#* �  .   
IsReadOnly$
. True��1  +System.Windows.Controls.DataGridBoundColumn/   Binding/ �� *IdCompetitorNavigation.Name+    surname#* �  $
. True��/ �� * IdCompetitorNavigation.Surname+    category#* �  $
. True��/ �� *20IdCompetitorNavigation.IdCategoryNavigation.Name+    club#* �  $
. True��/ �� *.,IdCompetitorNavigation.IdClubNavigation.Name+  #* �  $
. True��/ �� *Result+��   noEntriesYet#���  $��Center=�$��Center=�
�������y��� *Events.Count+# [ 