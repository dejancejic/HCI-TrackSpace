   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      )    #TrackSpace.Forms.Pages.ClubInfoPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         AppFont#���   5
        � 	Resources  5      1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter��%   &	         5   
   6+   5      .��5      � 
�������.+�5   
   �� -   5         ��Name$ closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      �� 5   
   $
��Left=�6   $��15,10,0,415q�6+   $
��Bold"�5      $��40(�6   
���   ���5   @   �� *Name+5   !   �� 5   
    . *MaterialDesignFloatingActionMiniDarkButton#��[ 5      $��45��6G   $��45��6R     Primary#���  6^    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��5      $��Bottom=�68   $��	0 0 15 15q�6S   $��Right=�6f   ��5      �� *GoBackCommand+{�5      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5        $��30��5      $��30��5      $ 	ArrowBack=�5      5      )  #MaterialDesignThemes.Wpf.DialogHost  5$   
   -   5          Name$ UserDetailsDialogHost��5$   $      DialogContent 5%      �� 5'      $��16q�6   $��Center=�6)   $	��400��6F   .+�5(      ��   competitorDetails#���  6    $��18(�5)      $
��Bold"�5*      $��0,0,0,16q�5+      $��Center=�5,      �� 5/      $��80��6   $��80��6(   	 �� CornerRadius$	 40��64     PrimaryHueMidBrush#���  50      $��Center=�51      $��0,0,0,16q�6.   ._�52        $ AccountCircleOutline=�62   $��80��53   &   $��80��61   $��Center=�54   &   $��Center=�55   &   56      �� 59      
 �� Orientation$
 
Horizontal=�6!   $
��Left=�6:   $��10,8,0,8q�6U   .+�5:      ��   nameDot#���  6$   $
��Bold"�5;      $��Center=�5<      �� 5=      $��Center=�5>      ��5=   $   �� *SelectedCompetitor.Name+5>      �� 5?      $�� ��6$   �� 5@      $��Center=�5A      ��5@   $   �� *SelectedCompetitor.Surname+5A      5B      �� 5D      $
 
Horizontal=�6!   $
��Left=�6:   $��	10,28,0,8q�6U   .+�5E      ��   categoryDot#���  6$   $
��Bold"�5F      $��Center=�5G      �� 5H      $��Center=�5I      ��5H   $   �� *.,SelectedCompetitor.IdCategoryNavigation.Name+5I      5J      �� 5L      $
 
Horizontal=�6!   $
��Left=�6:   $��10,8,0,8q�6U   .+�5M      ��  
 DoBDot#���  6$   $
��Bold"�5N      $��Center=�5O      �� 5P      $��Center=�5Q      ��5P   $   �� *SelectedCompetitor.Dob+ �� StringFormat$ {0:dd.MM.yyyy.}��5Q      5R      �� 5T      $
 
Horizontal=�6!   $
��Left=�6:   $��10,8,0,8q�6U   .+�5U      ��  	 	genderDot#��� 	 6$   $
��Bold"�5V      $��Center=�5W      �� 5X      $��Center=�5Y      ��5X   $   �� *SelectedCompetitor.Pol+ �� 	Converter# [ 5Y      5Z      �� 5_      $	��120��6    	
 close#��� 
 6)   #���  6K   
������� " MaterialDesignRaisedDarkButton#��[ 5`         CloseDialogCommand#��Z 5a      $��Center=�5b      $��0,30,0,0q�5c      5d      .��5h      &   System.Windows.Controls.DataGrid  -   5        $��30,275,122,75q�5h         AutoGenerateColumns$ False��5k         SelectionMode$ Single=�5l         SelectionUnit$ FullRow=�5m      "   VerticalScrollBarVisibility$ Visible=�6#   $   HorizontalScrollBarVisibility$ Disabled=�6I      CanUserAddRows$ False��5n        	Secondary   AlternatingRowBackground# �  5q      ��5j      �� *Club.Competitors+   ColumnHeaderStyle 5t      �� 5u       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    �� BasedOn# [B 6>   .�5v      ��  �� Property � �� �� Value$ Center=�6G   �� 5w       � ��# �  67   5y         	CellStyle 5}      �� 5~      *  $System.Windows.Controls.DataGridCell"  6   .�5      ��  �@��TextAlignment$ Center=�6D   �� 5�       � ��$ Center=�6G   �� 5�       � ��$ Center=�6E   �� 5�       � ��$	 120��65   �� 5�       � ��$ 30��63   5�         RowStyle 5�      �� 5�      )  #System.Windows.Controls.DataGridRow"  6   .�5�      ��  � ��$ 30��63   5�         Columns 5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�       	 order,	  &System.Windows.Controls.DataGridColumn 	  Header# �  6-      CellTemplate 5�      �� 5�      .R�5�   "   ��  �� TextAlignment$ Center=�5�       $��Center=�5�       $��Center=�5�       ��5�   ,   ��  ��  DataGridRow  �� Path$  (DataGridRow.Tag)�! �� Mode$! OneWay=�5�       5�      5�      0
  *System.Windows.Controls.DataGridTextColumn
  5�        name# �  6)   " 	  
IsReadOnly$
" True��6b   1  +System.Windows.Controls.DataGridBoundColumn#   Binding# 6I   �� *Name+6b   
  5�        surname# �  6)   $
" True��6h   # 6L   �� *	Surname+6h   
  5�        category# �  6)   $
" True��6{   # 6M   �� *IdCategoryNavigation.Name+6{   
  5�       
 gender# �  6)   $
" True��6�   # 6K   �� *Pol+# [ 6�   5�      5�      �� 5�   
   $
 
Horizontal=�6   $��30,224,0,327q�6.   .+�5�      ��   competitors#���  6   $
��Bold"�5�      $��20(�6   
���   �$	��105��64   �� 5�      $
��Left=�6   $��	-7 0 -7 0q�6/   $
��Bold"�5�      $��20(�6   
���   ���5�   B   �� *Club.CompetitorNumber+5�   !   �� 5�      $��)��6   $
��Bold"�5�      $��20(�6   
���   �$��15��64   $	��109��6?   5�      �� 5�   
   $
 Vertical=�6   $��30,100,316,378q�6-   .+�5�      �� $
 
Horizontal=�6   .+�5�      �� $
��Left=�6     clubCode#���  63   $	��170��6X   $
��Bold"�5�      $��20(�6   
���   �6!   �� 5�      $
��Left=�6   $��20(�6U   
���   ���63   �� *Club.ClubCode+6c   5�      �� 5�      $
 
Horizontal=�6   .+�5�      �� $
��Left=�6     contact#���  63   $	��170��6W   $
��Bold"�5�      $��20(�6   
���   �6!   �� 5�      $
��Left=�6   $��20(�6T   
���   ���63   �� *Club.Contact+6b   5�      �� 5�      $
 
Horizontal=�6   .+�5�      �� $
��Left=�6     contactMail#���  63   $	��170��6[   $
��Bold"�5�      $��20(�6   
���   �6!   �� 5�      $
��Left=�6   $��20(�5�      
���   ���5�   3   �� *.,Club.IdUserNavigation.IdUserNavigation.Email+5�   &   5�      5�        5�   
   $ InfoCircleOutline=�6"   $	��110��6;   $	��110��6H   $��Right=�6T   $��	0 85 70 0q�5�   "   #���  65   6^   5�      5�      