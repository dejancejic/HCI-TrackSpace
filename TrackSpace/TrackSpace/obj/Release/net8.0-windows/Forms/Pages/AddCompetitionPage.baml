   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  /    )TrackSpace.Forms.Pages.AddCompetitionPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6local$clr-namespace:TrackSpace.Forms.Pages     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     AppFont#���   $��18(�.��� 
�������.+��� $
��Left=�$��18,10,0,415q�  addCompetition#���  $
��Bold"�$��40(�
���   ��� -     ��Name$  closeBtn��
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 14 0q����� *CloseCommand+.��'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�$��25��$��25�� J� Opacity$	 0.5Q��� 
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 40 0q����� *MinimizeCommand+.��  $ Minus=�$��25��$��25��$	 0.5Q��� $��	25 70 0 0q�.+��� -    ��Name$ NameTextBox��$	��450��$
��Left=�  enterCompName)  #MaterialDesignThemes.Wpf.HintAssist   
HelperText# �    name   Hint# �  ���� *CompetitionName+.���� -   $��0 40 0 0q�$��55��$
��Left=�$	��702��  description# �    enterDescription# �   �� AcceptsReturn$
 True�� �� 	IsEnabled$ False�� �� TextWrapping$
 Wrap=�"	 �� VerticalScrollBarVisibility$
	 Auto=����� *Description+�� 
 �� Orientation$
 
Horizontal=�.+���   
selectDate#���  $��
0 20 400 0q��� $
 
Horizontal=�.+�&   System.Windows.Controls.Calendar  $	��380��$
��Left=�$��0 0 0 0q�$	��280��-  'MaterialDesignThemes.Wpf.CalendarAssist   Orientation$ 
Horizontal=�  Primary   HeaderBackground# �     HeaderForeground
 �����   SelectedDate �� *SelectedDate+�� $
 Vertical=�$	��388��.+�)  #MaterialDesignThemes.Wpf.TimePicker  $
��50px��$	��230��$��0 8 0 0q�  
chooseTime# �   	 pickTime# � 	    	Is24Hours$
 True�� $
  MaterialDesignOutlinedTimePicker#��[
    SelectedTime �� *SelectedDate+�� $��16(�$��0 70 0 0q�  pickLocation# �     MaterialDesignFilledComboBox#��[  �� SelectedIndex$ 0��$	��230��$��57��{��� *	IsChecked+ �� ElementName$# FilledComboBoxEnabledCheckBox������ *	Locations+ �� SelectedItem �� *SelectedLocation+ �� Mode$ TwoWay=��� $	��150��  	addEvents#���  #���  
������� " MaterialDesignRaisedDarkButton#��[ $��Right=�$��	0,10,25,0q�$��35������ *AddEventsCommand+