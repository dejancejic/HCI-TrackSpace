   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      U QSystem.Runtime, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a7,clr-namespace:System;assembly=System.RuntimeSystem 5
      )    #TrackSpace.Forms.Pages.SettingsPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      9System,clr-namespace:System;assembly=System.Runtime  5
         AppFont#���   6A     � 	Resources  5        CustomToggleButtonStyle �� 
TargetType $  MaterialDesignSwitchToggleButton �� BasedOn �� Triggers P� Property P� Value �� Property  Primary �� Value  RoundedButtonStyle �� 
TargetType	 �� Triggers��%�  &	       7  &	 �     �� 5   
   " d�60   8    5      P� 5       � {�$ False��6/   . �5      ��  � ��# �  63   5      5      �� 5   
   " ��6   .�5      ��  � ��
 ���� 6+   �� 5       � ��
 ���� 6,   �� 5       � �� 5      �� 5      " ��6&   .R�5      � .+�5      A� #��z��6&   �� 5      $��Center=�6/   $��Center=�6L   5      	 5       P� 5!       �@J�IsMouseOver$
 True��6=   . �5"   "   ��  � ��
 �����6?   5#      P� 5$       � ��$
 True��6;   . �5%   "   ��  � ��
 �����6?   5&      5(      5*      5+      5-      .��5.      � 
�������.+�50   
   �� -   5        
 ��Name$
 closeBtn��50      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��51      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   52      �� 53   
   
������ 
������ $��5 0 0 0q�6D   $��Right=�6V   $	��Top=�6r   $��	0 13 40 0q�6�   ��6�   �� *MinimizeCommand+.��54        $ Minus=�6&   $��25��63   $��25��6>   $	 0.5Q�6J   55      �� 56   
   $
��Left=�6   $��15,20,0,375q�6+     settings#���  6@   $
��Bold"�57      $��40(�6"   
���   �60     5:   
   #���  6"   $ Palette=�6I   $��40��6X   $��40��6c   $	��Top=�6o   $��	30,90,0,0q�6�   �� 5;   
   $
��Left=�6   $��75,90,0,329q�6+     selectTheme#���  6@   $��25(�5<   	   
���   �6   �� 5>   
    �� Orientation$ Vertical=�6   $��50,95,424,0q�6,   .+�5@      �� $ 
Horizontal=�6   $��30 50 10 10q�62   $��64��6G   .+�5B      d� $��50��5C      #��[ 5D      #���  62    d� 	IsChecked 5F      �� *IsGreenTheme+ �� Mode$ TwoWay=�{�5G      �� *IsGreenThemeEnabled+1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   SwitchTrackOnBackground 5H      �� 5I       �� Color$ Green��5J         SwitchTrackOffBackground 5L      �� 5M      $	 Red��5N      5P      �� 5R        
greenTheme#���  6   $��18(�6?   $��15q�6M   6[   5T      �� 5V      $ 
Horizontal=�6   $��30 -20 10 10q�62   $��64��6H   .+�5X      d� $��50��5Y      #��[ 5Z      #���  62    5[      �� *IsBlueTheme+$ TwoWay=�{�5\      �� *IsBlueThemeEnabled+ 5]      �� 5^      $ Green��5_       5a      �� 5b      $	 Red��5c      5e      �� 5g        	blueTheme#���  6   $��18(�6>   $��15q�6L   6Z   5i      �� 5l      $ 
Horizontal=�6   $��30 -20 10 10q�62   $��64��6H   .+�5n      d� $��50��5o      #��[ 5p      #���  62    5q      �� *
IsRedTheme+$ TwoWay=�{�5r      �� *IsRedThemeEnabled+ 5t      �� 5u      $ Green��5v       5x      �� 5y      $	 Red��5z      5|      �� 5~       	 redTheme#��� 	 6   $��18(�6=   $��15q�6K   6Y   5�      5�      �� 5�   
   $��44,365,437,23q�6   .+�5�      �  � ColumnDefinitions 5�      �� 5�      �� 5�      5�      5�        5�   
   #���  6"   $ 	Translate=�6I   $��35��6Z   $��35��6e   $	��Top=�6q   $��359,217,0,0q�6�   �� 5�   
    
 chooseLanguage#��� 
 6   $��400,219,73,211q�6;   $��25(�6S   6c   �� 5�   
   $��410,325,71,200q�6   .+�5�      �  5�      �� 5�      �� 5�      5�      �� 5�      $	��250��5�      $��16(�6   $��-50 -55 0 0q�6     language)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �  5�         MaterialDesignFilledComboBox#��[ 5�       �� SelectedIndex$ 0��5�      $��50��6   {�5�      �� *	IsChecked+ �� ElementName$# FilledComboBoxEnabledCheckBox����5�      �� *	Languages+ �� SelectedItem 5�      �� *SelectedLanguage+$ TwoWay=�5�      5�        5�   
   #���  6"   $ 
FormatFont=�6I   $��40��6[   $��40��6f   $	��Top=�6r   $��
355,90,0,0q�6�   �� 5�   
   $ Vertical=�6   $��400,91,56,387q�6,   .+�5�      �� $
��Left=�6     
selectFont#���  6/   $��25(�5�      
���   �$	��247��6"   �� 5�      $��16(�6   $��1��6%   $��1��65   $��
-50 10 0 0q�6B     font# �  5�      #��[ 5�      $ 0��5�      $	��250��6   {�5�      �� *	IsChecked+$# FilledComboBoxEnabledCheckBox����5�      �� *Fonts+ 5�      �� *SelectedFont+$ TwoWay=�5�      5�      5�      5�      