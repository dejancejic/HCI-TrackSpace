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
   
������ 
������ $��5 0 0 0q�6D   $��Right=�6V   $	��Top=�6r   $��	0 13 40 0q�6�   ��6�   �� *MinimizeCommand+.��5        $ Minus=�6&   $��25��63   $��25��6>   $	 0.5Q�6J   5      �� 5    
   $��16,141,423,100q�6   $
��Auto=�60   .��5!      �� -   5         ��Name$ running��5!      $��0 0 10 0q�6*    �� Orientation$ Vertical=�6<   5#      5$      �� 5%   
   $��16,141,423,100q�6   $��Hidden=�60   .��5&      �� -   5        $ jumping��5&      $��0 0 10 0q�6*   $ Vertical=�6=   5(      5)      �� 5+   
   $��16,141,423,100q�6   $��Hidden=�60   .��5,      �� -   5        $ throwing��5,      $��0 0 10 0q�6+   $ Vertical=�6=   5.      5/      �� 52   
   #���  6   $��16,141,418,100q�6:   $��1q�6S    �� CornerRadius$ 10��6g   53      �� 55   
   #���  6   $��414,141,20,100q�6:   $��1q�6S   $ 10��6g   56      �� 59   
   $��412,141,27,100q�6   $
��Auto=�60   .��5:      �� -   5        $ selected��5:      $��0 0 10 0q�6+   $ Vertical=�6=   .+�5;      ��   noEventsSelected#���  6   $��
10 170 0 0q�6F   $��Center=�6Z   
�������y�5<      �� *CountSelected+ �� 	Converter# [ 5=      5>      �� 5@   
   $ 
Horizontal=�6   $��410,100,5,0q�6.   .+�5A        #���  6&   $ CalendarStar=�6M   $��35��6a   $��38��6l   $	��Top=�6x   �� 5B      $
��Bold"�6   $��Right=�6&     selectedEvents#���  6C   $��92��6n   $	��Top=�6z   6�   5C      �� 5F   
   $��16(�6   $��23,72,458,461q�6!    
 events)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �  5G        	 MaterialDesignFilledComboBox#��[	 5I      	 �� SelectedIndex$	 0��5L      {�5H      �� *	IsChecked+
 �� ElementName$#
 FilledComboBoxEnabledCheckBox����5J      �� *Types+ �� SelectedItem 5K      �� *SelectedType+ �� Mode$ TwoWay=�5L      �� 5O   
   -   5        $ 	goBackBtn��5O       .
 *MaterialDesignFloatingActionMiniDarkButton#��[
 5Q      $��45��6E   $��45��6P   #���  6\    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��5R      $��Bottom=�66   $��	0 0 15 15q�6Q   $��Right=�6d   ��5O   $   �� *GoBackCommand+{�5P      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5S        $��30��5T      $��30��5U      $ 	ArrowBack=�5V      5W      5Y      5Z      