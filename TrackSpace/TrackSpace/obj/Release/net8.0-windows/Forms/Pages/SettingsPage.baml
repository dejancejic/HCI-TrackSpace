   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  U QSystem.Runtime, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a7,clr-namespace:System;assembly=System.RuntimeSystem )    #TrackSpace.Forms.Pages.SettingsPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6local$clr-namespace:TrackSpace.Forms.Pages     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  9System,clr-namespace:System;assembly=System.Runtime     AppFont#���     � 	Resources    CustomToggleButtonStyle �� 
TargetType $  MaterialDesignSwitchToggleButton �� BasedOn �� Triggers P� Property P� Value �� Property  Primary �� Value  RoundedButtonStyle �� 
TargetType	 �� Triggers��%_  &	       7  &	 C     �� " d�8    P�  � {�$ False��. ���  � ��# �  �� " ��.���  � ��
 ���� ��  � ��
 ���� ��  � �� �� " ��.R�� .+�A� #��z���� $��Center=�$��Center=�	 P�  �@J�IsMouseOver$
 True��. ���  � ��
 �����P�  � ��$
 True��. ���  � ��
 �����.��� 
�������.+��� -   
 ��Name$
 closeBtn��
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 14 0q����� *CloseCommand+.��'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�$��25��$��25�� J� Opacity$	 0.5Q��� 
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 40 0q����� *MinimizeCommand+.��  $ Minus=�$��25��$��25��$	 0.5Q��� $
��Left=�$��15,20,0,375q�  settings#���  $
��Bold"�$��40(�
���   ��� $
��Left=�$��50,90,0,329q�  selectTheme#���  $��25(�
���   ���  �� Orientation$ Vertical=�$��50,95,424,0q�.+��� $ 
Horizontal=�$��30 50 10 10q�$��64��.+�d� $��50��#��[ #���   d� 	IsChecked �� *IsGreenTheme+ �� Mode$ TwoWay=�{��� *IsGreenThemeEnabled+1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   SwitchTrackOnBackground ��  �� Color$ Green��   SwitchTrackOffBackground �� $	 Red����   
greenTheme#���  $��18(�$��15q��� $ 
Horizontal=�$��30 -20 10 10q�$��64��.+�d� $��50��#��[ #���   �� *IsBlueTheme+$ TwoWay=�{��� *IsBlueThemeEnabled+ �� $ Green�� �� $	 Red����   	blueTheme#���  $��18(�$��15q��� $ 
Horizontal=�$��30 -20 10 10q�$��64��.+�d� $��50��#��[ #���   �� *
IsRedTheme+$ TwoWay=�{��� *IsRedThemeEnabled+ �� $ Green�� �� $	 Red����  	 redTheme#��� 	 $��18(�$��15q��� $��44,365,437,23q�.+��  � ColumnDefinitions �� �� ��  
 chooseLanguage#��� 
 $��400,219,73,211q�$��25(��� $��410,325,71,200q�.+��  �� �� �� $	��250��$��16(�$��-50 -55 0 0q�  language)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �     MaterialDesignFilledComboBox#��[  �� SelectedIndex$ 0��$��50��{��� *	IsChecked+ �� ElementName$# FilledComboBoxEnabledCheckBox������ *	Languages+ �� SelectedItem �� *SelectedLanguage+$ TwoWay=��� $ Vertical=�$��400,91,56,387q�.+��� $
��Left=�  
selectFont#���  $��25(�
���   �$	��247���� $��16(�$��1��$��1��$��
-50 10 0 0q�  font# �  #��[ $ 0��$	��250��{��� *	IsChecked+$# FilledComboBoxEnabledCheckBox������ *Fonts+ �� *SelectedFont+$ TwoWay=�