   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  )    #TrackSpace.Forms.Pages.ClubInfoPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6local$clr-namespace:TrackSpace.Forms.Pages     0utilsclr-namespace:TrackSpace.Utils     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     AppFont#���   $��18(�  � 	Resources  1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%   &	       &	          .��� -   $��noClubTB��.+���   notAnAdminYet#���  $��Center=�$��Center=�$y�Visible=�� -   $��mainGrid��
�������.+��� -    ��Name$ closeBtn��
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 14 0q����� *CloseCommand+.��'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�$��25��$��25�� J� Opacity$	 0.5Q��� $
��Left=�$��15,10,0,415q�$
��Bold"�$��40(�
���   ����� *Name+�� 
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 40 0q����� *MinimizeCommand+.��  $ Minus=�$��25��$��25��$	 0.5Q��� -   $ 	goBackBtn�� . *MaterialDesignFloatingActionMiniDarkButton#��[ $��45��$��45��  Primary#���   � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��$��Bottom=�$��	0 0 15 15q�$��Right=����� *GoBackCommand+{��� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��  $��30��$��30��$ 	ArrowBack=�)  #MaterialDesignThemes.Wpf.DialogHost  -     Name$ AddCompetitorDialogHost��$��-5 -5 -5 -5q�   DialogContent �� $��16q�$��Center=�$	��350��.+���   addCompetitorTitle#���  $
��Bold"�$��0,0,0,16q�$��Center=��� -   $ closeDialog��
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��324 -48 0 0q�	   CloseDialogCommand#��Z	 .��  $ Close=�$��25��$��25��$	 0.5Q��� $��70��$��70��
 �� CornerRadius$
 40��  PrimaryHueMidBrush#���  $��Center=�$��0,0,0,13q�._�  $ AccountsAdd=�$��70��$��70��$��Center=�$��Center=��� .+��� -    ��Name$ NameTextBox��$	��200��  enterCompetitorName)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# �   	 name   Hint# � 	 ���� *AddedCompetitor.Name+.���� -   $ SurnnameTextBox��$	��200��$��0 25 0 0q� 
 enterCompetitorSurname# � 
   surname# �  ���� *AddedCompetitor.Surname+.��(  "System.Windows.Controls.DatePicker  $��0 40 0 0q�$	��200��  
dayOfBirth# �  .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True�� ( $MaterialDesignFloatingHintDatePicker#��[    SelectedDate �� *Date+��  �� Orientation$ 
Horizontal=�$��	75 25 0 0q�$
��Left=�$	��200��.+���   	genderDot#���  $��0 3 0 0q�$
��Bold"�d� $��Center=�$��5 0 0 0q�  M1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   	OnContent# �    F#���   $  MaterialDesignActionToggleButton#��[ $+ %MaterialDesignActionLightToggleButton�� d� 	IsChecked �� *IsMale+ �� Mode$ TwoWay=��� $ 
Horizontal=�$
��Left=�$��	10,28,0,8q�.+���   categoryDot#���  $
��Bold"�$��Center=��� $��Center=����� *
Category+�� $	��150��#���  #���  
������� " MaterialDesignRaisedDarkButton#��[ $��Center=�$��0,30,0,0q����� *AddCompetitorConfirmCommand+.���� -	   $ addCompetitorBtn��$y�Hidden=�#��[ $��45��$��45��#���  $0 *MaterialDesignFloatingActionMiniDarkButton��$��Bottom=�$��	30 0 0 15q�$
��Left=����� *AddCompetitorCommand+{��� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��  $��30��$��30��$ AccountsAdd=�  -
   $ UserDetailsDialogHost��$��-5 -5 -5 -5q� �� $��16q�$��Center=�$	��400��.+���   competitorDetails#���  $
��Bold"�$��0,0,0,16q�$��Center=��� $��80��$��80��$
 40��#���  $��Center=�$��0,0,0,16q�._�  $ AccountCircleOutline=�$��80��$��80��$��Center=�$��Center=��� $ 
Horizontal=�$
��Left=�$��10,8,0,8q�.+���   nameDot#���  $
��Bold"�$��Center=��� $��Center=����� *SelectedCompetitor.Name+�� $�� ���� $��Center=����� *SelectedCompetitor.Surname+�� $ 
Horizontal=�$
��Left=�$��	10,28,0,8q�.+��� #���  $
��Bold"�$��Center=��� $��Center=����� *.,SelectedCompetitor.IdCategoryNavigation.Name+�� $ 
Horizontal=�$
��Left=�$��10,8,0,8q�.+���  
 DoBDot#���  $
��Bold"�$��Center=��� $��Center=����� *SelectedCompetitor.Dob+ �� StringFormat$ {0:dd.MM.yyyy.}���� $ 
Horizontal=�$
��Left=�$��10,8,0,8q�.+��� #���  $
��Bold"�$��Center=��� $��Center=����� *SelectedCompetitor.Pol+ �� 	Converter# [ �� $	��120�� 	 close#���  #���  
�������#��[ #��Z	 $��Center=�$��0,30,0,0q�.���� #���  #���  $��30,275,122,75q�$��1q�$
 10��._�� .+�&	   System.Windows.Controls.DataGrid	  -   $��2,1,2,1q� 	  AutoGenerateColumns$ False�� 	  SelectionMode$ Single=� 	  SelectionUnit$ FullRow=�" 	  VerticalScrollBarVisibility$ Hidden=�$ 	  HorizontalScrollBarVisibility$ Disabled=� 	  CanUserAddRows$ False��  	Secondary 	  AlternatingRowBackground# �  ���� *Club.Competitors+ 	  ColumnHeaderStyle ��  �� 
TargetType=
  7System.Windows.Controls.Primitives.DataGridColumnHeader" 
  �� BasedOn# [B
 .���   �� Property  � ��! �� Value$! Center=���   � ��#! �  " 	  	CellStyle" �� *  $System.Windows.Controls.DataGridCell"  .�-   ��   �@��TextAlignment$! Center=���   � ��$! Center=���   � ��$! Center=���   � ��$! 0 3 0 0q���   � ��$	! 120����   � ��$! 30��# 	  RowStyle# �� )  #System.Windows.Controls.DataGridRow"  .���   � ��$! 30��$ 	  Columns$ 4  .System.Windows.Controls.DataGridTemplateColumn   	 order,  &System.Windows.Controls.DataGridColumn%   Header#% �  &   CellTemplate& �� .R��� ' �� TextAlignment$' Center=�$��Center=�$��Center=�����  ��  DataGridRow( �� Path$( (DataGridRow.Tag)�$ OneWay=�0  *System.Windows.Controls.DataGridTextColumn  #% � 	 )   
IsReadOnly$
) True��1  +System.Windows.Controls.DataGridBoundColumn*   Binding* �� *Name+  #% �  $
) True��* �� *	Surname+    category#% �  $
) True��* �� *IdCategoryNavigation.Name+   
 gender#% �  $
) True��* �� *Pol+# [ ��   noCompetitors#���  $��Center=�$��Center=�
�������y��� *Club.Competitors.Count+# [ �� $ 
Horizontal=�$��30,234,0,307q�.+���   competitors#���  $
��Bold"�
���   �$	��105���� $
��Left=�$��	-7 0 -7 0q�$
��Bold"�
���   ����� *Club.CompetitorNumber+�� $��)��$
��Bold"�
���   �$��15��$	��109���� $ Vertical=�$��30,100,316,378q�.+��� $ 
Horizontal=�.+��� $
��Left=�  clubCode#���  $	��170��$
��Bold"�
���   ��� $
��Left=�
���   ����� *Club.ClubCode+�� $ 
Horizontal=�.+��� $
��Left=�  contact#���  $	��170��$
��Bold"�
���   ��� $
��Left=�
���   ����� *Club.Contact+�� $ 
Horizontal=�.+��� $
��Left=�   contactMail#���   $	��170��$
��Bold"�
���   ��� $
��Left=�
���   ����� *.,Club.IdUserNavigation.IdUserNavigation.Email+  $ InfoCircleOutline=�$	��110��$	��110��$��Right=�$��	0 85 70 0q�#���  