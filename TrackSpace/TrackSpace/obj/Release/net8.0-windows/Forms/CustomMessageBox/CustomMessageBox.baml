   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:TrackSpace.Forms.CustomMessageBox!TrackSpace.Forms.CustomMessageBox  8    2TrackSpace.Forms.CustomMessageBox.CustomMessageBox   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     Alocal/clr-namespace:TrackSpace.Forms.CustomMessageBox     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � Title$  CustomMessageBox��$	��250��$	��400�� � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=�
������  � AllowsTransparency$
 True�� � 
ResizeMode$ NoResize=�$��18(�   AppFont#���   .��� $��20q� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     
BlurRadius$ 30Q�   ShadowDepth$ 1Q�   Opacity$	 0.4Q�	 � ColumnDefinitions	 �� $��* ��� $��1.22* �.+��� -     Primary#���  
 �� CornerRadius$
 	10 10 0 0��$
}�True��$��2��$��	0,0,0,120q� J� Clip ��  �� Rect$ 0,0,550,305� �� RadiusX$ 10Q� �� RadiusY$ 10Q�._�� .+��� -    ��Name$ closeBtn��
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��0 8 14 0q�.��'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�$��25��$��25�� J� Opacity$	 0.5Q���  �� Orientation$ 
Horizontal=�.+�  -   $��	titleIcon��$
 Info=�$	��Top=�$
��Left=�$��30��$��30�����#ffffff$��	10 5 14 0q��� -   $��titleLbl��$�� ��$
��Bold"����#ffffff$��	-12 8 0 0q��� -   ���#ffffff$
 	0 0 10 10��$
}�True��$��2��$��0,40,0,0q� �� $ 0,0,550,305�$ 0Q�$ 10Q�._�� $��Center=� � RowDefinitions �� $��* ��� $
��Auto ��� $��* �.+��� $��1��$��Center=�$��Center=�$��	20,0,20,0q�.���� -   $��messageTextBlock��$�� ��$
��Wrap=� �� TextAlignment$ Center=��� -   $��okBtn��$y�Hidden=�$��2��$��128,40,0,-19q�$
��Left=�$��OK��#���  ���#ffffff$��18(�$	��100��$��30��+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10���� -   $��yesBtn��$y�Hidden=�$��2��$��62,40,0,-20q�$
��Left=�  yes#���  #���  ���#ffffff$��18(�$	��100��$��30��$ 10���� -	   $��noBtn��$y�Hidden=�$��2��$��200,40,0,-20q�$
��Left=�  no#���  #���  ���#ffffff$��18(�$	��100��$��30��$ 10��