   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      /    )TrackSpace.Forms.Pages.AddCompetitionPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         AppFont#���   5	      $��18(�6(   .��5      � 
�������.+�5   
   �� $
��Left=�6   $��18,10,0,415q�6+     addCompetition#���  6@   $
��Bold"�5      $��40(�6   
���   �6!   �� 5   
   -   5          ��Name$  closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      �� 5   
   
������ 
������ $��5 0 0 0q�6D   $��Right=�6V   $	��Top=�6r   $��	0 13 40 0q�6�   ��6�   �� *MinimizeCommand+.��5        $ Minus=�6&   $��25��63   $��25��6>   $	 0.5Q�6J   5        5   
     Primary#���  6"   $ RenameOutline=�6I   $��35��6^   $��38��6i   $	��Top=�6u   $��	20,70,5,0q�6�     5   
   #���  6"   $ CommentTextOutline=�6I   $��35��6c   $��38��6n   $	��Top=�6z   $��
20,140,5,0q�6�     5   
   #���  6"   $ Alarm=�6I   $��35��6V   $��38��6a   $	��Top=�6m   $��460,260,5,0q�6�     5   
   #���  6"   $ 
MapOutline=�6I   $��35��6[   $��38��6f   $	��Top=�6r   $��460,385,5,0q�6�   �� 5   
   $��	65 70 0 0q�6   .+�5      �� -   5         ��Name$ NameTextBox��5      $	��450��5   <   $
��Left=�6H     enterCompName)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# �  5         name   Hint# �  5!      ��5   c   �� *CompetitionName+.��5!   ;   5#      �� 5&      -   5        $��	0 40 80 0q�5&   C   $��55��5'      $
��Left=�5(      $	��702��5)        description# �  5*        enterDescription# �  5+       �� AcceptsReturn$
 True��5,       �� 	IsEnabled$ False��5-       �� TextWrapping$
 Wrap=�5/      "	 �� VerticalScrollBarVisibility$
	 Auto=�50      ��5&   W   �� *Description+50      �� 54      
 �� Orientation$
 
Horizontal=�6   $��
-45 10 0 0q�62   .+�55        #���  6*   $ CalendarEdit=�6Q   $��35��6e   $��38��6p   $	��Top=�6|   $��0 12 0 0q�6�   �� 56        
selectDate#���  6   $��
6 20 400 0q�6?   6U   57      �� 59      $
 
Horizontal=�6   $��	-40 0 0 0q�62   .+�5:      &   System.Windows.Controls.Calendar  $	��380��6   $
��Left=�6'   $��0 0 0 0q�6B   $	��280��6S   -  'MaterialDesignThemes.Wpf.CalendarAssist   Orientation$ 
Horizontal=�5;         HeaderBackground# �  5<         HeaderForeground
 �����   SelectedDate 5;   8   �� *SelectedDate+5=      �� 5@      $
 Vertical=�6   $	��388��64   .+�5A      )  #MaterialDesignThemes.Wpf.TimePicker  $
��50px��5B      $	��230��5C      $��30 8 0 0q�5D        
chooseTime# �  5E       	 pickTime# � 	 5F         	Is24Hours$
 True��5G       $
  MaterialDesignOutlinedTimePicker#��[
 5I         SelectedTime 5A   0   �� *SelectedDate+5K      �� 5N      $��16(�6   $��	30 70 0 0q�6-     pickLocation# �  5O         MaterialDesignFilledComboBox#��[ 5Q       �� SelectedIndex$ 0��5T      $	��230��6   $��57��6   {�5P      �� *	IsChecked+ �� ElementName$# FilledComboBoxEnabledCheckBox����5R      �� *	Locations+ �� SelectedItem 5S      �� *SelectedLocation+ �� Mode$ TwoWay=�5T      5V      5X      �� 5[      $	��150��6     	addEvents#���  6!   #���  6G   
������� " MaterialDesignRaisedDarkButton#��[ 5\      $��Right=�5^      $��0,0,25,0q�5_      $��35��6   ��5]      �� *AddEventsCommand+5_      5a      5c      5d      