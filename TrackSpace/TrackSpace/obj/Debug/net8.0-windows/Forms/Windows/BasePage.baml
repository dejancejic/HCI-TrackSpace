   M S B A M L   `   `   `  ����  
TrackSpace'    !TrackSpace.Forms.Windows.BasePage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5	      � $��20q�6     J� Effect  5
   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6      ShadowDepth$ 1Q�5         Opacity$	 0.4Q�5       � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��1.22* �6   .+�5   
   ��    Primary#���   6    �� CornerRadius$ 	10 0 0 10��5      $
}�True��5      $��2��5      $��0,0,0,20q�5       J� Clip 5      �� 5       �� Rect$ 0,0,200,600�6$    �� RadiusX$ 0Q�5   $   	 �� RadiusY$	 10Q�5   $   ._�5      �� ��6   �� *SideMenuContent+
 �� RelativeSource
 ��  �� AncestorType UserControl5       �� 5"   
   ���#ffffff$ 	0 10 10 0��5#      $
}�True��5$      $��2��5%      $��0,0,0,20q�5&       5'      �� 5(      $ 200,0,800,600�6$   $ 0Q�5)   $   $	 10Q�5*   $   ._�50      �� $��	198 0 0 0q�6"   $	��583��6�   $	��758��6�   ��65   �� *MainContent+
 ��  UserControl6�   52      53      54      