   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      /    )TrackSpace.Forms.Pages.AddCompetitionPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         AppFont#���   5	      $��18(�6(   .��5      � 
�������.+�5   
   �� $
��Left=�6   $��18,10,0,415q�6+     addCompetition#���  6@   $
��Bold"�5      $��40(�6   
���   �6!   �� 5   
   -   5          ��Name$  closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      �� 5   
   $��16(�6   $��1��6!   $��1��61   $��500 100 0 0q�6?   $	��Top=�6T   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Select Location��5         MaterialDesignFilledComboBox#��[ 5       �� SelectedIndex$ 0��5      $	��250��6   $��77��6   {�5      �� *	IsChecked+ �� ElementName$# FilledComboBoxEnabledCheckBox����5      �� *	Locations+ �� SelectedItem 5      �� *SelectedLocation+ �� Mode$ TwoWay=�5      �� 5   
   $��	25 70 0 0q�6   .+�5      �� -   5         ��Name$ NameTextBox��5      $	��450��5      $
��Left=�6"   	   
HelperText$	 Enter Competition's name��5       $
 Name��5!      .��6)   5#      �� 5&      $��0 20 0 0q�6   $��70��5'      $
��Left=�5(      $	��450��5)      $��Stretch=�5*      $ Description��5+      $%	 Enter Competition's description��5,      
 �� AcceptsReturn$

 True��5-       �� 	IsEnabled$ False��5.       �� TextWrapping$
 Wrap=�50      " �� VerticalScrollBarVisibility$
 Auto=�51      �� 55       �� Orientation$ 
Horizontal=�6   .+�56      �� $��Select Date:��6   $��
0 20 400 0q�6/   6E   �� 57      $��Select Time:��6   $��-80 20 40 0q�6/   6F   58      �� 5:      $ 
Horizontal=�6   .+�5;      &   System.Windows.Controls.Calendar  $	��380��6   $
��Left=�6'   $��0 0 0 0q�6B   $	��280��6S   -  'MaterialDesignThemes.Wpf.CalendarAssist   Orientation$ 
Horizontal=�5<        Primary   HeaderBackground# �  5=         HeaderForeground
 �����   SelectedDate 5<   8   �� *SelectedDate+5>      $  MaterialDesignThemes.Wpf.Clock  5B      $��45 0 0 0q�6'   $	��280��6S   $
��auto��5C         DisplayAutomation$ Cycle=�5D         	Is24Hours$
 True��5E         IsHeaderVisible$ False��5F         Time 5B   9   �� *
TimeSpan+5F      5G      �� 5J      $	��150��6   $��
Add Events��6!   #���  66   
������� " MaterialDesignRaisedDarkButton#��[ 5K      $��Center=�5M      $��0,15,0,0q�5N      ��5L      �� *AddEventsCommand+5N      5P      5R      5S      