   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      )    #TrackSpace.Forms.Pages.ClubInfoPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         AppFont#���   5
      $��20(�6.     � 	Resources  5      1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%:   &	       &	        5   
   6+     5   
   65   5      .��5      � -   5        $��noClubTB��5      .+�5   
   ��   notAnAdminYet#���  6   $��Center=�6<   $��Center=�6W   $y�Visible=�6t   6�   �� 5   
   -   5         ��Name$ closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      �� 5   
   
������ 
������ $��5 0 0 0q�6D   $��Right=�6V   $	��Top=�6r   $��	0 13 40 0q�6�   ��6�   �� *MinimizeCommand+.��5        $ Minus=�6&   $��25��63   $��25��6>   $	 0.5Q�6J   5      � 5   
   -   5        $��mainGrid��5   "   
�������.+�5      �� -   5        $ 	closeBtn1��5      
������ 
������ $��5 0 0 0q�6[   $��Right=�6m   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5        $ Close=�6*   $��25��67   $��25��6B   $	 0.5Q�6N   5      �� 5       
������ 
������ $��5 0 0 0q�6H   $��Right=�6Z   $	��Top=�6v   $��	0 13 40 0q�6�   ��6�   �� *MinimizeCommand+.��5!        $ Minus=�6*   $��25��67   $��25��6B   $	 0.5Q�6N   5"      �� 5$       �� Orientation$ 
Horizontal=�6   $��15,10,0,415q�62   .+�5%      �� $
��Left=�6   $
��Bold"�5&      $��40(�6   
���   ���5%   4   �� *Name+5&   !   �� 5'      $
��Left=�6   $
�� -  ��64   $
��Bold"�5(      $��40(�6   
���   �6!   �� 5)      $
��Left=�6   $
��Bold"�5*      $��40(�6   
���   ���5)   4   �� *Club.ClubCode+5*   !   5+      �� 5.      -   5        $ 	goBackBtn��5.       . *MaterialDesignFloatingActionMiniDarkButton#��[ 50      $��45��6G   $��45��6R     Primary#���  6^    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��51      $��Bottom=�68   $��	0 0 15 15q�6S   $��Right=�6f   ��5.   (   �� *GoBackCommand+{�5/      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��52        $��30��53      $��30��54      $ 	ArrowBack=�55      56      )  #MaterialDesignThemes.Wpf.DialogHost  59      -   5          Name$ AddCompetitorDialogHost��59   (   $��-5 -5 -5 -5q�6I   	   DialogContent	 5:      �� 5<      $��16q�6   $��Center=�6)   $	��350��6F   .+�5=      ��   addCompetitorTitle#���  6    $
��Bold"�5?      $��0,0,0,16q�5@      $��Center=�5A      �� 5C      -   5        $ closeDialog��5C      
������ 
������ $��5 0 0 0q�5D   P   $��Right=�6b   $	��Top=�6~   $��324 -48 0 0q�6�   
   CloseDialogCommand#��Z
 5E      .��5F        $ Close=�62   $��25��6?   $��25��6J   $	 0.5Q�6V   5G      �� 5J      $��70��6   $��70��6(    �� CornerRadius$ 40��64     PrimaryHueMidBrush#���  5K      $��Center=�5L      $��0,0,0,13q�6.   ._�5M        $ AccountsAdd=�62   $��70��5N   &   $��70��61   $��Center=�5O   &   $��Center=�5P   &   5Q      �� 5S      .+�5T      �� -   5         ��Name$ NameTextBox��5U      $	��200��5T   "     enterCompetitorName)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# �  5V       	 name   Hint# � 	 5W      ��5T   .   �� *AddedCompetitor.Name+.��5W   R   5Y      �� 5[      -	   5        $ SurnnameTextBox��5\      $	��200��5[   &   $��0 25 0 0q�62    
 enterCompetitorSurname# � 
 5]        surname# �  5^      ��5[   D   �� *AddedCompetitor.Surname+.��5^   <   5`      (  "System.Windows.Controls.DatePicker  5b      $��0 40 0 0q�6%   $	��200��5c        
dayOfBirth# �  5d      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5e       ( $MaterialDesignFloatingHintDatePicker#��[ 5f         SelectedDate 5b   7   �� *Date+5f      �� 5h      $ 
Horizontal=�6%   $��	75 25 0 0q�6>   $
��Left=�6Q   $	��200��6l   .+�5i      ��   	genderDot#���  6(   $��0 3 0 0q�6K   $
��Bold"�5j      d� 5l      $��Center=�6+   $��5 0 0 0q�6H     M1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   	OnContent# �  5m        F#���  5n      #���  6!    $  MaterialDesignActionToggleButton#��[ 5o      $+ %MaterialDesignActionLightToggleButton��5p       d� 	IsChecked 5m   E   �� *IsMale+ �� Mode$ TwoWay=�5p      5r      5u      �� 5~      $ 
Horizontal=�6!   $
��Left=�6:   $��	10,28,0,8q�6U   .+�5      ��   categoryDot#���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *
Category+5�      5�      �� 5�      $	��150��6   #���  6)   #���  6X   
������� " MaterialDesignRaisedDarkButton#��[ 5�      $��Center=�5�      $��0,30,0,0q�5�      ��5�      �� *AddCompetitorConfirmCommand+5�      5�      .��5�      �� -
   5        $ addCompetitorBtn��5�      $y�Hidden=�60   #��[ 5�      $��45��6E   $��45��6P   #���  6\   $0 *MaterialDesignFloatingActionMiniDarkButton��5�      $��Bottom=�66   $��	30 0 0 15q�6Q   $
��Left=�6d   ��5�   D   �� *AddCompetitorCommand+{�5�      �� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��5�        $��30��5�      $��30��5�      $ AccountsAdd=�5�      5�      5�        5�   
   -   5        $ UserDetailsDialogHost��5�   $   $��-5 -5 -5 -5q�6C   	 5�      �� 5�      $��16q�6   $��Center=�6)   $	��400��6F   .+�5�      ��   competitorDetails#���  6    $
��Bold"�5�      $��0,0,0,16q�5�      $��Center=�5�      �� 5�      $��80��6   $��80��6(   $ 40��64   #���  5�      $��Center=�5�      $��0,0,0,16q�6.   ._�5�        $ AccountCircleOutline=�62   $��80��5�   &   $��80��61   $��Center=�5�   &   $��Center=�5�   &   5�      �� 5�      $ 
Horizontal=�6!   $
��Left=�6:   $��10,8,0,8q�6U   .+�5�      ��   nameDot#���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *SelectedCompetitor.Name+5�      �� 5�      $�� ��6$   �� 5�      $��Center=�5�      ��5�   $   �� *SelectedCompetitor.Surname+5�      5�      �� 5�      $ 
Horizontal=�6!   $
��Left=�6:   $��	10,28,0,8q�6U   .+�5�      �� #���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *.,SelectedCompetitor.IdCategoryNavigation.Name+5�      5�      �� 5�      $ 
Horizontal=�6!   $
��Left=�6:   $��10,8,0,8q�6U   .+�5�      ��  
 DoBDot#���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *SelectedCompetitor.Dob+ �� StringFormat$ {0:dd.MM.yyyy.}��5�      5�      �� 5�      $ 
Horizontal=�6!   $
��Left=�6:   $��10,8,0,8q�6U   .+�5�      �� #���  6$   $
��Bold"�5�      $��Center=�5�      �� 5�      $��Center=�5�      ��5�   $   �� *SelectedCompetitor.Pol+ �� 	Converter# [ 5�      5�      �� 5�      $	��120��6    	 close#���  6)   #���  6K   
�������#��[ 5�      #��Z
 5�      $��Center=�5�      $��0,30,0,0q�5�      5�      .��5�      �� #���  6   #���  6=   $��60,215,75,80q�6e   $��1q�6|   $ 10��6�   ._�5�      � .+�5�      &	   System.Windows.Controls.DataGrid	  -   5        $��2,1,2,1q�5�       	  AutoGenerateColumns$ False��5�       	  SelectionMode$ Single=�5�       	  SelectionUnit$ FullRow=�5�      " 	  VerticalScrollBarVisibility$ Hidden=�6#   $ 	  HorizontalScrollBarVisibility$
 Auto=�6H    	  CanUserAddRows$ False��5�        	Secondary 	  AlternatingRowBackground# �  5�      ��5�      �� *Club.Competitors+ 	  ColumnHeaderStyle 5�      �� 5�       �� 
TargetType=
  7System.Windows.Controls.Primitives.DataGridColumnHeader" 
 6    �� BasedOn# [B
 6>   .�5�      ��   �� Property  � ��! �� Value$! Center=�6G   �� 5�        � ��#! �  67   5�      " 	  	CellStyle" 5�      �� 5�      *  $System.Windows.Controls.DataGridCell"  6   .�5�      -   5        �� 5�        �@��TextAlignment$! Center=�6H   �� 5�        � ��$! Center=�6G   �� 5�        � ��$! Center=�6E   �� 5�        � ��$! 0 3 0 0q�67   �� 5�        � ��$	! 125��69   �� 5�        � ��$! 32��63   �� 5�   &     � ��$! 15(�6A   5   #   # 	  RowStyle# 5     �� 5     )  #System.Windows.Controls.DataGridRow"  6   .�5     ��   � ��$! 32��63   5     $ 	  Columns$ 5     4  .System.Windows.Controls.DataGridTemplateColumn  5      	 order,  &System.Windows.Controls.DataGridColumn%   Header#% �  6-   &   CellTemplate& 5     �� 5     .R�5  "   �� ' �� TextAlignment$' Center=�5      $��Center=�5      $��Center=�5      ��5  ,   ��  ��  DataGridRow( �� Path$( (DataGridRow.Tag)�$ OneWay=�5      5     5       5  "   #% � 	 69   & 5  &   �� 5  *   .R�5  .   �� $
��Bold"�6N   $' Center=�6`   ��68   �� *Name+6`   5  +   5!  #     5#  "   #% �  69   & 5$  &   �� 5%  *   .R�5&  .   �� $
��Bold"�6Q   $' Center=�6c   ��68   �� *	Surname+6c   5'  +   5)  #   0  *System.Windows.Controls.DataGridTextColumn  5-  "     category#% �  65   )   
IsReadOnly$
) True��6�   1  +System.Windows.Controls.DataGridBoundColumn*   Binding* 6Y   �� *IdCategoryNavigation.Name+6�     5.      
 gender#% �  6)   $
) True��6�   * 6K   �� *Pol+# [ 6�   50     �� 51       noCompetitors#���  6    $��Center=�6G   $��Center=�6d   
�������y�52      �� *Club.Competitors.Count+# [ 53     54     5:     �� 5<  
   $ 
Horizontal=�6   $��55,154,0,307q�6.   .+�5=       #���  6*   $ AccountGroupOutline=�6Q   $��38��6l   $��38��6w   $��Center=�6�   $��	0,-53,5,0q�6�   �� 5>       competitors#���  6   $
��Bold"�5?     
���   �$��85��6'   �� 5A     $
��Left=�6   $��
-7 19 -7 0q�6/   $
��Bold"�5B     
���   ���5A  C   �� *Club.CompetitorNumber+5B     �� 5C     $��)��6   $
��Bold"�5D     
���   �$��15��6'   $��85��62   5G     �� 5I  
   $ Vertical=�6   $��50,80,350,308q�6-   .+�5L     ]� $��
0,25,200,5q�6   .+�5M       #���  6.   $ Phone=�6U   $��28��6b   $��28��6m   $��Center=�6y   $��0,0,10,0q�6�   �� 5N     $��17(�6   + �� 
IsReadOnly$
+ true��6,    % !MaterialDesignFloatingHintTextBox#��[ 6>     contact# �  6y   ,   FloatingOffset$, 0,-20&�5O     ���#c5c8cc$��0q�5Q     ��5P     �� *Club.Contact+5Q     5S     ]� 5U     $��220,-43,-70,0q�6   .+�5V       #���  6.   $ CodeBlockBraces=�6U   $��28��6l   $��28��6w   $��Center=�6�   $��0,0,10,0q�6�   �� 5W     $��17(�6   $
+ true��6,   #��[ 6?      contactMail# �   6z   $, 0,-20&�5X     ���#c5c8cc$��0q�5Z     ��5Y     �� *.,Club.IdUserNavigation.IdUserNavigation.Email+5Z     5\     5c       5e  
   $ InfoCircleOutline=�6"   $	��110��6;   $	��110��6H   $��Right=�6T   $��	0 65 70 0q�5f  "   #���  65   6^   5h     5i     5k     