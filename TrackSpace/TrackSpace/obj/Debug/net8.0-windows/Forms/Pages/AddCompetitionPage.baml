   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      /    )TrackSpace.Forms.Pages.AddCompetitionPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         AppFont#���   5	      $��18(�6(   .��5      � 
�������.+�5   
   �� $
��Left=�6   $��18,10,0,415q�6+     addCompetition#���  6@   $
��Bold"�5      $��40(�6   
���   �6!   �� 5   
   -   5          ��Name$  closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      �� 5   
   $��	25 70 0 0q�6   .+�5      �� -   5         ��Name$ NameTextBox��5      $	��450��5      $
��Left=�6"     enterCompName)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# �  5        name   Hint# �  5      ��5   =   �� *CompetitionName+.��5   ;   5      �� 5       $��0 40 0 0q�6   $��55��5!      $
��Left=�5"      $	��702��5#        description# �  5$        enterDescription# �  5%       �� AcceptsReturn$
 True��5&       �� 	IsEnabled$ False��5'       �� TextWrapping$
 Wrap=�5)      "	 �� VerticalScrollBarVisibility$
	 Auto=�5*      ��5    )   �� *Description+5*      �� 5.      
 �� Orientation$
 
Horizontal=�6   .+�5/      ��   
selectDate#���  6   $��
0 20 400 0q�6?   6U   50      �� 52      $
 
Horizontal=�6   .+�53      &   System.Windows.Controls.Calendar  $	��380��6   $
��Left=�6'   $��0 0 0 0q�6B   $	��280��6S   -  'MaterialDesignThemes.Wpf.CalendarAssist   Orientation$ 
Horizontal=�54        Primary   HeaderBackground# �  55         HeaderForeground
 �����   SelectedDate 54   8   �� *SelectedDate+56      �� 58      $
 Vertical=�6   $	��388��64   .+�59      )  #MaterialDesignThemes.Wpf.TimePicker  $
��50px��5:      $	��230��5;      $��0 8 0 0q�6!     
chooseTime# �  5<       	 pickTime# � 	 5=         	Is24Hours$
 True��5>       $
  MaterialDesignOutlinedTimePicker#��[
 5?         SelectedTime 59   0   �� *SelectedDate+5?      �� 5A      $��16(�6   $��0 70 0 0q�6-     pickLocation# �  5B         MaterialDesignFilledComboBox#��[ 5D       �� SelectedIndex$ 0��5G      $	��230��6   $��57��6   {�5C      �� *	IsChecked+ �� ElementName$# FilledComboBoxEnabledCheckBox����5E      �� *	Locations+ �� SelectedItem 5F      �� *SelectedLocation+ �� Mode$ TwoWay=�5G      5I      5K      �� 5N      $	��150��6     	addEvents#���  6!   #���  6G   
������� " MaterialDesignRaisedDarkButton#��[ 5O      $��Right=�5Q      $��	0,10,25,0q�5R      $��35��6   ��5P      �� *AddEventsCommand+5R      5T      5V      5W      