   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      *    $TrackSpace.Forms.Pages.AddEventsPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	         AppFont#���   5
      $��18(�6(     � 	Resources  5      ;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%   &	         5   
   65   5      .��5      � -   5        
�������.+�5   
   �� $	��170��6     addNewCompetition#���  6     Primary#���  6K   
������� " MaterialDesignRaisedDarkButton#��[ 5      $��Center=�5      $	��Top=�6   $��	0,538,0,0q�5      $��36��6   ��5      �� *AddCompetitionCommand+5      �� 5   
   $
��Left=�6   $��18,10,0,517q�6+     	addEvents#���  6@   $
��Bold"�5      $��40(�6   
���   �6!   �� 5   
   -   5         ��Name$ closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      �� 5   
   $��16,141,423,100q�6   $
��Auto=�60   .��5      �� -   5         ��Name$ running��5      $��0 0 10 0q�6*    �� Orientation$ Vertical=�6<   5       5!      �� 5"   
   $��16,141,423,100q�6   $��Hidden=�60   .��5#      �� -   5        $ jumping��5#      $��0 0 10 0q�6*   $ Vertical=�6=   5%      5&      �� 5(   
   $��16,141,423,100q�6   $��Hidden=�60   .��5)      �� -   5        $ throwing��5)      $��0 0 10 0q�6+   $ Vertical=�6=   5+      5,      �� 5/   
   #���  6   $��16,141,418,100q�6:   $��1q�6S    �� CornerRadius$ 10��6g   50      �� 52   
   #���  6   $��414,141,20,100q�6:   $��1q�6S   $ 10��6g   53      �� 56   
   $��412,141,27,100q�6   $
��Auto=�60   .��57      �� -   5        $ selected��57      $��0 0 10 0q�6+   $ Vertical=�6=   .+�58      ��   noEventsSelected#���  6   $��	0 170 0 0q�6F   $��Center=�6Y   $��Center=�6v   
�������y�59      �� *CountSelected+ �� 	Converter# [ 5:      5;      �� 5=   
   $
��Bold"�6   $��Right=�6"   $��0,100,206,0q�6>     selectedEvents#���  6S   $��92��6~   $	��Top=�6�   6�   �� 5?   
   $��16(�6   $��23,72,458,461q�6!    
 events)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �  5@        	 MaterialDesignFilledComboBox#��[	 5B      	 �� SelectedIndex$	 0��5E      {�5A      �� *	IsChecked+
 �� ElementName$#
 FilledComboBoxEnabledCheckBox����5C      �� *Types+ �� SelectedItem 5D      �� *SelectedType+ �� Mode$ TwoWay=�5E      �� 5H   
   -   5        $ 	goBackBtn��5H       .
 *MaterialDesignFloatingActionMiniDarkButton#��[
 5J      $��45��6E   $��45��6P   #���  6\    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��5K      $��Bottom=�66   $��	0 0 15 15q�6Q   $��Right=�6d   ��5H   $   �� *GoBackCommand+{�5I      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5L        $��30��5M      $��30��5N      $ 	ArrowBack=�5O      5P      5R      5S      