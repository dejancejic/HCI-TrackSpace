   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      (    "TrackSpace.Forms.Pages.AddUserPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         AppFont#���   5	      $��18(�6(   .��5      � 
�������.+�5   
   �� $
��Left=�6   $��18,10,0,415q�6+     addUser#���  6@   $
��Bold"�5      $��40(�6   
���   �6!   �� 5   
   -   5          ��Name$  closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *LogoutCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      �� 5   
   
������ 
������ $��5 0 0 0q�6D   $��Right=�6V   $	��Top=�6r   $��	0 13 40 0q�6�   ��6�   �� *MinimizeCommand+.��5        $ Minus=�6&   $��25��63   $��25��6>   $	 0.5Q�6J   5      �� 5   
   $��150,90,150,0q�6   $	��Top=�6+   .+�5      ��   accountType)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �  6   $
��Left=�6V   $��0,0 0 30q�5   A    " MaterialDesignOutlinedComboBox#��[ 6S   $	��458��6�   ��5   q   �� *	UserTypes+ �� SelectedItem 5      �� *SelectedUserType+6�   ]� 5      $��0,0,0,0q�6   .+�5          Primary#���  6*   $ Account=�6Q   $��28��6`   $��28��6k   $��Center=�6w   $��0,0,10,0q�6�   �� 5      -   5         ��Name$ 
usernameTF��5       % !MaterialDesignFloatingHintTextBox#��[ 6r     username# �  6�      FloatingOffset$ 0,-20&�5      ���#c5c8cc$��	0 0 0 1.5q�5       ��5   X   �� *
Username+5       5!      ]� 5"      $��	0,27,0,30q�6   .+�5#        #���  6*   $
 Lock=�6Q   $��28��6]   $��28��6h   $��Center=�6t   $��0,0,10,0q�6�   G� 5$      -   5         G�Name$ 
passwordTF��5$       # MaterialDesignRevealPasswordBox#��[ 62     password# �  6k   $ 0,-20&�5&      ���#c5c8cc$��	0 0 0 1.5q�5(   	   5)      ]� 5+      $��0,0,0,30q�6   .+�5,        #���  6*   $ 	LockReset=�6Q   $��28��6b   $��28��6m   $��Center=�6y   $��0,0,10,0q�6�   G� 5-      -   5        $ passwordRepeatTF��5-      #��[ 68    	 repeatPassword# � 	 6q   $ 0,-20&�5/      ���#c5c8cc$��	0 0 0 1.5q�51      52      ]� 54      $��0,0,0,30q�6   .+�55        #���  6+   $ Gmail=�6R   $��28��6_   $��28��6j   $��Center=�6v   $��0,0,10,0q�6�   �� 56      -   5        $ mailTF��56      #��[ 6f   $ Email��6�   $ 0,-20&�57      ���#c5c8cc$��	0 0 0 1.5q�59      ��56   P   �� *Mail+59      5:      �� 5<      
�������$��20(�6(   #���  66    
 MaterialDesignRaisedButton#��[
 6}   #���  6�   $��0,20,0,0q�6�   ��6Z   �� *AddUserCommand+6�   5=      5?      5@      