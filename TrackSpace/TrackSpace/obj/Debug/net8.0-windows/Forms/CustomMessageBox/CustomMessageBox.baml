   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:TrackSpace.Forms.CustomMessageBox!TrackSpace.Forms.CustomMessageBox  5   	   8    2TrackSpace.Forms.CustomMessageBox.CustomMessageBox   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Alocal/clr-namespace:TrackSpace.Forms.CustomMessageBox     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  CustomMessageBox��5	   	   $	��250��6"   $	��400��6/    � WindowStartupLocation$ CenterScreen=�5
   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency$
 True��5   	    � 
ResizeMode$ NoResize=�5   	   $��18(�5   	      AppFont#���   5   	   .��5      � $��20q�6    J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6      ShadowDepth$ 1Q�5         Opacity$	 0.4Q�5      5      	 � ColumnDefinitions	 5   
   �� 5      $��* �6   �� 5      $��1.22* �6   .+�5   
   �� -   5          Primary#���  5      
 �� CornerRadius$
 	10 10 0 0��5      $
}�True��5      $��2��5!      $��	0,0,0,120q�5"       J� Clip 5#      �� 5$       �� Rect$ 0,0,550,305�6$    �� RadiusX$ 10Q�5%   $    �� RadiusY$ 10Q�5&   $   ._�5)      � .+�5*      �� -   5         ��Name$ closeBtn��5*      
������ 
������ $��5 0 0 0q�5+      $��Right=�6+   $	��Top=�6G   $��0 8 14 0q�6_   .��5,      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6.   $��25��6;   $��25��6F    J� Opacity$	 0.5Q�6R   5-      �� 50       �� Orientation$ 
Horizontal=�6   .+�52        -   5        $��	titleIcon��52   .   $
 Info=�53      $	��Top=�6   $
��Left=�6%   $��30��54      $��30��6   ���#ffffff$��	10 5 14 0q�6-   55      �� 57      -   5        $��titleLbl��57      $�� ��6,   $
��Bold"�68   ���#ffffff$��	-12 8 0 0q�6_   6t   58      5:      5;      �� 5=   
   -   5        ���#ffffff$
 	0 0 10 10��5>      $
}�True��5?      $��2��5A      $��0,40,0,0q�5B       5C      �� 5D      $ 0,0,550,305�6$   $ 0Q�5E   $   $ 10Q�5F   $   ._�5I      � $��Center=�6    � RowDefinitions 5J      �� 5K      $��* �6$   �� 5L      $
��Auto �6$   �� 5M      $��* �6$   .+�5O      �� $��1��6   $��Center=�6%   $��Center=�6B   $��	20,0,20,0q�6]   .��5P      �� -   5        $��messageTextBlock��5P       $�� ��68   $
��Wrap=�6@    �� TextAlignment$ Center=�6T   5Q      �� 5S      -   5        $��okBtn��5S      $y�Hidden=�6&   $��2��6:   $��128,40,0,-19q�6G   $
��Left=�6]   $��OK��6x   #���  5T      ���#ffffff$��18(�5V      $	��100��5W      $��30��5X      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��5Y      6C   �� 5[      -   5        $��yesBtn��5[      $y�Hidden=�6'   $��2��6;   $��62,40,0,-20q�6H   $
��Left=�6]     yes#���  6x   #���  5\      ���#ffffff$��18(�5^      $	��100��5_      $��30��5`      $ 10��5a      63   �� 5c      -	   5        $��noBtn��5c      $y�Hidden=�6&   $��2��6:   $��200,40,0,-20q�6G   $
��Left=�6]     no#���  6x   #���  5d      ���#ffffff$��18(�5f      $	��100��5g      $��30��5h      $ 10��5i      63   5k      5l      5m      5n      