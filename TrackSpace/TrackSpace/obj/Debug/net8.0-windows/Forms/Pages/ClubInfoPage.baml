   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      )    #TrackSpace.Forms.Pages.ClubInfoPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         AppFont#���   5
      $��18(�6.     � 	Resources  5      1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%:   &	       &	        5   
   6+     5   
   65   5      .��5      � -   5        $��noClubTB��5      .+�5   
   ��   notAnAdminYet#���  6   $��Center=�6<   $��Center=�6W   $y�Visible=�6t   6�   � 5      -   5        $��mainGrid��5      
�������.+�5   
   �� -   5         ��Name$ closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      �� 5   
   $
��Left=�6   $��15,10,0,415q�6+   $
��Bold"�5      $��40(�6   
���   ���5   @   �� *Name+5   !   �� 5   
   -   5        $ 	goBackBtn��5       . *MaterialDesignFloatingActionMiniDarkButton#��[ 5      $��45��6G   $��45��6R     Primary#���  6^    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��5      $��Bottom=�68   $��	0 0 15 15q�6S   $��Right=�6f   ��5   $   �� *GoBackCommand+{�5      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5         $��30��5!      $��30��5"      $ 	ArrowBack=�5#      5$      )  #MaterialDesignThemes.Wpf.DialogHost  5'   
   -   5          Name$ AddCompetitorDialogHost��5'   $      DialogContent 5(      �� 5*      $��16q�6   $��Center=�6)   $	��350��6F   .+�5+      ��   addCompetitorTitle#���  6    $
��Bold"�5-      $��0,0,0,16q�5.      $��Center=�5/      �� 51      -   5        $ closeDialog��51      
������ 
������ $��5 0 0 0q�52   P   $��Right=�6b   $	��Top=�6~   $��324 -48 0 0q�6�   	   CloseDialogCommand#��Z	 53      .��54        $ Close=�62   $��25��6?   $��25��6J   $	 0.5Q�6V   55      �� 58      $��70��6   $��70��6(   
 �� CornerRadius$
 40��64     PrimaryHueMidBrush#���  59      $��Center=�5:      $��0,0,0,13q�6.   ._�5;        $ AccountsAdd=�62   $��70��5<   &   $��70��61   $��Center=�5=   &   $��Center=�5>   &   5?      �� 5A      .+�5B      �� -   5         ��Name$ NameTextBox��5C      $	��200��5B   "     enterCompetitorName)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# �  5D       	 name   Hint# � 	 5E      ��5B   .   �� *AddedCompetitor.Name+.��5E   R   5G      �� 5I      -   5        $ SurnnameTextBox��5J      $	��200��5I   "   $��0 25 0 0q�6.    
 enterCompetitorSurname# � 
 5K        surname# �  5L      ��5I   @   �� *AddedCompetitor.Surname+.��5L   <   5N      (  "System.Windows.Controls.DatePicker  5P      $��0 40 0 0q�6%   $	��200��5Q        
dayOfBirth# �  5R      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5S       ( $MaterialDesignFloatingHintDatePicker#��[ 5T         SelectedDate 5P   7   �� *Date+5T      �� 5V       �� Orientation$ 
Horizontal=�6%   $��	75 25 0 0q�6>   $
��Left=�6Q   $	��200��6l   .+�5W      ��   	genderDot#���  6(   $��0 3 0 0q�6K   $
��Bold"�5X      d� 5Z      $��Center=�6+   $��5 0 0 0q�6H     M1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   	OnContent# �  5[        F#���  5\       $  MaterialDesignActionToggleButton#��[ 5]      $+ %MaterialDesignActionLightToggleButton��5^       d� 	IsChecked 5[   E   �� *IsMale+ �� Mode$ TwoWay=�5^      5`      5c      �� 5l      $ 
Horizontal=�6!   $
��Left=�6:   $��	10,28,0,8q�6U   .+�5m      ��   categoryDot#���  6$   $
��Bold"�5n      $��Center=�5o      �� 5p      $��Center=�5q      ��5p   $   �� *
Category+5q      5r      �� 5u      $	��150��6   #���  6)   #���  6X   
������� " MaterialDesignRaisedDarkButton#��[ 5v      $��Center=�5x      $��0,30,0,0q�5y      ��5w      �� *AddCompetitorConfirmCommand+5y      5z      .��5~      �� -	   5        $ addCompetitorBtn��5~      $y�Hidden=�60   #��[ 5�      $��45��6E   $��45��6P   #���  6\   $0 *MaterialDesignFloatingActionMiniDarkButton��5�      $��Bottom=�66   $��	30 0 0 15q�6Q   $
��Left=�6d   ��5~   D   �� *AddCompetitorCommand+{�5      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��5�        $��30��5�      $��30��5�      $ AccountsAdd=�5�      5�      5�        5�   
   -
   5        $ UserDetailsDialogHost��5�   $    5�      �� 5�      $��16q�6   $��Center=�6)   $	��400��6F   .+�5�      ��   competitorDetails#���  6    $
��Bold"�5�      $��0,0,0,16q�5�      $��Center=�5�      �� 5�      $��80��6   $��80��6(   $
 40��64   #���  5�      $��Center=�5�      $��0,0,0,16q�6.   ._�5�        $ AccountCircleOutline=�62   $��80��5�   &   $��80��61   $��Center=�5�   &   $��Center=�5�   &   5�      �� 5�      $ 
Horizontal=�6!   $
��Left=�6:   $��10,8,0,8q�6U   .+�5�      ��   nameDot#���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *SelectedCompetitor.Name+5�      �� 5�      $�� ��6$   �� 5�      $��Center=�5�      ��5�   $   �� *SelectedCompetitor.Surname+5�      5�      �� 5�      $ 
Horizontal=�6!   $
��Left=�6:   $��	10,28,0,8q�6U   .+�5�      �� #���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *.,SelectedCompetitor.IdCategoryNavigation.Name+5�      5�      �� 5�      $ 
Horizontal=�6!   $
��Left=�6:   $��10,8,0,8q�6U   .+�5�      ��  
 DoBDot#���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *SelectedCompetitor.Dob+ �� StringFormat$ {0:dd.MM.yyyy.}��5�      5�      �� 5�      $ 
Horizontal=�6!   $
��Left=�6:   $��10,8,0,8q�6U   .+�5�      �� #���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *SelectedCompetitor.Pol+ �� 	Converter# [ 5�      5�      �� 5�      $	��120��6    	 close#���  6)   #���  6K   
�������#��[ 5�      #��Z	 5�      $��Center=�5�      $��0,30,0,0q�5�      5�      .��5�      �� #���  6   #���  6=   $��30,275,122,75q�6e   $��1q�6}   $
 10��6�   ._�5�      � .+�5�      &	   System.Windows.Controls.DataGrid	  -   5        $��2,1,2,1q�5�       	  AutoGenerateColumns$ False��5�       	  SelectionMode$ Single=�5�       	  SelectionUnit$ FullRow=�5�      " 	  VerticalScrollBarVisibility$ Hidden=�6#   $ 	  HorizontalScrollBarVisibility$ Disabled=�6H    	  CanUserAddRows$ False��5�        	Secondary 	  AlternatingRowBackground# �  5�      ��5�      �� *Club.Competitors+ 	  ColumnHeaderStyle 5�      �� 5�       �� 
TargetType=
  7System.Windows.Controls.Primitives.DataGridColumnHeader" 
 6    �� BasedOn# [B
 6>   .�5�      ��   �� Property  � ��! �� Value$! Center=�6G   �� 5�        � ��#! �  67   5�      " 	  	CellStyle" 5�      �� 5�      *  $System.Windows.Controls.DataGridCell"  6   .�5�      -   5        �� 5�        �@��TextAlignment$! Center=�6H   �� 5�        � ��$! Center=�6G   �� 5�        � ��$! Center=�6E   �� 5�        � ��$! 0 3 0 0q�67   �� 5�        � ��$	! 120��69   �� 5�        � ��$! 30��63   5�      # 	  RowStyle# 5�      �� 5�      )  #System.Windows.Controls.DataGridRow"  6   .�5�      ��   � ��$! 30��63   5�      $ 	  Columns$ 5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�       	 order,  &System.Windows.Controls.DataGridColumn%   Header#% �  6-   &   CellTemplate& 5�      �� 5�      .R�5�   "   �� ' �� TextAlignment$' Center=�5       $��Center=�5      $��Center=�5      ��5�   ,   ��  ��  DataGridRow( �� Path$( (DataGridRow.Tag)�$ OneWay=�5      5     5     0  *System.Windows.Controls.DataGridTextColumn  5     #% � 	 6)   )   
IsReadOnly$
) True��6b   1  +System.Windows.Controls.DataGridBoundColumn*   Binding* 6I   �� *Name+6b     5     #% �  6)   $
) True��6h   * 6L   �� *	Surname+6h     5       category#% �  6)   $
) True��6{   * 6M   �� *IdCategoryNavigation.Name+6{     5      
 gender#% �  6)   $
) True��6�   * 6K   �� *Pol+# [ 6�   5     �� 5       noCompetitors#���  6    $��Center=�6G   $��Center=�6d   
�������y�5      �� *Club.Competitors.Count+# [ 5     5     5     �� 5  
   $ 
Horizontal=�6   $��30,234,0,307q�6.   .+�5     ��   competitors#���  6   $
��Bold"�5     
���   �$	��105��6'   �� 5      $
��Left=�6   $��	-7 0 -7 0q�6/   $
��Bold"�5!     
���   ���5   B   �� *Club.CompetitorNumber+5!     �� 5"     $��)��6   $
��Bold"�5#     
���   �$��15��6'   $	��109��62   5&     �� 5(  
   $ Vertical=�6   $��30,100,316,378q�6-   .+�5)     �� $ 
Horizontal=�6   .+�5*     �� $
��Left=�6     clubCode#���  63   $	��170��6X   $
��Bold"�5+     
���   �6   �� 5,     $
��Left=�6   
���   ���63   �� *Club.ClubCode+6U   5.     �� 51     $ 
Horizontal=�6   .+�52     �� $
��Left=�6     contact#���  63   $	��170��6W   $
��Bold"�53     
���   �6   �� 54     $
��Left=�6   
���   ���63   �� *Club.Contact+6U   56     �� 58     $ 
Horizontal=�6   .+�59     �� $
��Left=�6      contactMail#���   63   $	��170��6[   $
��Bold"�5:     
���   �6   �� 5;     $
��Left=�6   
���   ���63   �� *.,Club.IdUserNavigation.IdUserNavigation.Email+5<     5?     5E       5G  
   $ InfoCircleOutline=�6"   $	��110��6;   $	��110��6H   $��Right=�6T   $��	0 85 70 0q�5H  "   #���  65   6^   5J     5K     5M     