   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:TrackSpace.Forms.CustomMessageBox!TrackSpace.Forms.CustomMessageBox  5   	   8    2TrackSpace.Forms.CustomMessageBox.CustomMessageBox   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Alocal/clr-namespace:TrackSpace.Forms.CustomMessageBox     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  CustomMessageBox��5	   	   $	��250��6"   $	��400��6/    � WindowStartupLocation$ CenterScreen=�5
   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency$
 True��5   	    � 
ResizeMode$ NoResize=�5   	   $��18(�5   	      MaterialDesignFont#���   5   	   .��5      � $��20q�6    J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6      ShadowDepth$ 1Q�5         Opacity$	 0.4Q�5      5      	 � ColumnDefinitions	 5   
   �� 5      $��* �6   �� 5      $��1.22* �6   .+�5   
   �� -   5        ���#07bf96
 �� CornerRadius$
 	10 10 0 0��5      $
}�True��5      $��2��5!      $��	0,0,0,120q�5"       J� Clip 5#      �� 5$       �� Rect$ 0,0,550,305�6$    �� RadiusX$ 10Q�5%   $    �� RadiusY$ 10Q�5&   $   ._�5)      � .+�5*      '  !MaterialDesignThemes.Wpf.PackIcon  -   5           Kind$ Close=�5+      $	��Top=�6"   $��Right=�6:   $��25��5,      $��25��6     J� Opacity$	 0.5Q�6,   $��0 8 14 0q�6:   5-      �� 5/       �� Orientation$ 
Horizontal=�6   .+�51        -   5        $��	titleIcon��51   .   $
 Info=�52      $	��Top=�6   $
��Left=�6%   $��30��53      $��30��6   ���#ffffff$��	10 5 14 0q�6-   54      �� 56      -   5        $��titleLbl��56      $�� ��6,   $
��Bold"�68   ���#ffffff$��	-12 8 0 0q�6_   6t   57      59      5:      �� 5<   
   -   5        ���#ffffff$
 	0 0 10 10��5=      $
}�True��5>      $��2��5@      $��0,40,0,0q�5A       5B      �� 5C      $ 0,0,550,305�6$   $ 0Q�5D   $   $ 10Q�5E   $   ._�5H      � $��Center=�6    � RowDefinitions 5I      �� 5J      $��* �6$   �� 5K      $
��Auto �6$   �� 5L      $��* �6$   .+�5N      �� $��1��6   $��Center=�6%   $��Center=�6B   $��	20,0,20,0q�6]   .��5O      �� -   5        $��messageTextBlock��5O       $�� ��68   $
��Wrap=�6@    �� TextAlignment$ Center=�6T   5P      �� 5R      -   5        $��okBtn��5R      $y�Hidden=�6&   $��2��6:   $��128,40,0,-19q�6G   $
��Left=�6]   $��OK��6x   ���#05b790���#ffffff$��18(�5U      $	��100��5V      $��30��5W      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��5X      6C   �� 5Z      -   5        $��yesBtn��5Z      $y�Hidden=�6'   $��2��6;   $��62,40,0,-20q�6H   $
��Left=�6]     yes#���  6x   ���#05b790���#ffffff$��18(�5]      $	��100��5^      $��30��5_      $ 10��5`      63   �� 5b      -	   5        $��noBtn��5b      $y�Hidden=�6&   $��2��6:   $��200,40,0,-20q�6G   $
��Left=�6]     no#���  6x   ���#05b790���#ffffff$��18(�5e      $	��100��5f      $��30��5g      $ 10��5h      63   5j      5k      5l      5m      