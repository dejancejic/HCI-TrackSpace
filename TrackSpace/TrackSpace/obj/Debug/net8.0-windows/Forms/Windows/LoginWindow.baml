   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:TrackSpace.Forms.WindowsTrackSpace.Forms.Windows  5   	   *    $TrackSpace.Forms.Windows.LoginWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:TrackSpace.Forms.Windows     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  
MainWindow��5	   	   $	��645��6   $	��875��6)    � WindowStartupLocation$ CenterScreen=�5
   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency$
 True��5   	    � 
ResizeMode$ NoResize=�5   	   $��18(�5   	      MaterialDesignFont#���   5   	    � 	Resources 5       �� 
TargetType  HoverHighlightLabel �� Property �� Value	 �� Triggers
 P� Property P� Value��%�   &	       �� 5   
   " ��6   .�5      ��  � �� �#05b7906+   	 5      P� 5      
 �@J�IsMouseOver$
 True��61   . �5      ��  � ��
 ��  �63   5      5      5      .��5      � $��20q�6    J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 30Q�6      ShadowDepth$ 1Q�5         Opacity$	 0.4Q�5       5"       � ColumnDefinitions 5%   
   �� 5&      $��* �6   5'      �� 5(      $��1.22* �6   6/   .+�5+   
   �� -   5        ���#07bf96 �� CornerRadius$ 	10 0 0 10��5,      $
}�True��5-       J� Clip 5/      �� 50       �� Rect$ 0,0,400,605�6$    �� RadiusX$ 10Q�51   $    �� RadiusY$ 10Q�52   $   63   ._�56      � .+�57      �� $��	0 120 0 0q�6   $	��Top=�58      .+�59      �� $��46(�6    $��Light"�5:       	 login#���  5;      ���#ffffff �� TextAlignment$ Center=�5=      6*   �� 5>      $��Light"�6    $��16(�5?      ���#d1f2eb$ Center=�5A        useAllFeatures#���  5B      $��0 15 0 3q�5C      6%   �� 5D      $��Light"�6    $��16(�5E      ���#d1f2eb$ Center=�5G        ofApplication#���  5H      5I      5K      A� 5M      $	��500��6   $	��500��6&   $��Bottom=�5N      ���#5eccb4$��50 0 0 -200q�5P       J� Opacity$	 0.6Q�5Q      6*   A� 5S      $	��300��6   $	��300��6&   $��Bottom=�5T   
   ���#5bcbb3$��-450 0 0 30q�5V   
   $	 0.3Q�5W   
   6   A� 5Z      $	��400��6   $	��400��6&   $��Bottom=�5[   
   ���#5eccb4$��-320 0 0 -120q�5]   
   $	 0.3Q�5^   
   6   A� 5a      $	��250��6   $	��250��6&   $��Bottom=�5b   
   ���#5bc9b2$��-380 0 0 -120q�5d   
   5e      A� 5h      $	��400��6   $	��400��6&   $��Bottom=�5i   
   ���#5eccb4$��280 0 0 -70q�5k   
   $	 0.8Q�5l   
   6   �� 5o      ���#fdfdfd$	 100��6.   $��Center=�5p      $��Bottom=�5q      $	��110��5r      $	��110��5s      $��0 0 0 80q�5t      ._�5v      � .+�5w      �� $H��Bpack://application:,,,/TrackSpace;component/Resources/logoIcon.png��6    $��Center=�5x      $��Center=�6%   $��90��5y      $��90��6   A� 5{      $	��100��6"   $	��100��5|   "   $��4��5}   "   ��5~      �� 5   "   .��5�   &   �  � Color$ #e27c53��63    � Offset$
 0.15Q�5�   3   6C   � 5�   &   $ #dca530��5�   )   $	 0.2Q�5�   )   5�   ,   � 5�   &   $ #8bb356��63   $	 0.3Q�5�      6   � 5�   &   $ #3bb799��63   $	 0.4Q�5�      6   � 5�   &   $ #67cbee��63   $	 0.5Q�5�      6   � 5�   &   $ #3699db��63   $	 0.6Q�5�      6   � 5�   &   $ #9264aa��63   $	 0.8Q�5�      6   � 5�   &   $ #6e94de��63   $	 0.9Q�5�      6   5�   #   5�      5�      5�      5�      5�      �� 5�   
   -   5        $��1��5�      ���#ffffff$ 	0 10 10 0��5�   	   ._�5�      � .+�5�      '  !MaterialDesignThemes.Wpf.PackIcon  -   5           Kind$ Close=�5�   *   $	��Top=�5�   !   $��Right=�5�   "   $��25��5�   "   $��25��5�   "   $	 0.5Q�5�   "   $��	0 13 14 0q�5�   "   5�   $   �� 5�       �� Orientation$ 
Horizontal=�6   $��10,30,10,520q�66   .+�5�      ��   chooseLanguage#���  6   6I   �� 5�      -   5        $��languageComboBox��5�      $	��100��67   $��20,0,0,0q�6F   $	��Top=�6X    �� SelectedIndex$ 1��6q   $	��135��6�   @�5�      �� 5�      
 � Tag$ sr��6+   .��5�   "   �� $ 
Horizontal=�6-   .+�5�   &   �� $K��Epack://application:,,,/TrackSpace;component/Resources/serbianIcon.png��6,   $��20��6{   $��20��6�   $��0,0,5,0q�6�   �� 5�   &   $��Srpski��60   $��Center=�6>   5�   #   5�      �� 5�      $ en��6+   .��5�   "   �� $ 
Horizontal=�6-   .+�5�   &   �� $K��Epack://application:,,,/TrackSpace;component/Resources/englishIcon.png��6,   $��20��6{   $��20��6�   $��0,0,5,0q�6�   �� 5�   &   $��English��60   $��Center=�6?   5�   #   5�      5�      5�      �� 5�      $��Center=�6   $
��75 0q�5�      .+�5�      ]� $��0,0,0,10q�6    .+�5�        $ Account=�62   $��24��6A   $��24��6L   $��Center=�6X   $��0,0,10,0q�6s   �� 5�       % !MaterialDesignFloatingHintTextBox#��[ 6"     username)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �  6]      FloatingOffset$ 0,-20&�5�      ���#c5c8cc$��	0 0 0 1.5q�5�      5�      ]� 5�      $��	0,27,0,50q�6    .+�5�        $
 Lock=�62   $��24��6>   $��24��6I   $��Center=�6U   $��0,0,10,0q�6p   G� 5�       ) %MaterialDesignFloatingHintPasswordBox#��[ 6'    	 password# � 	 6f   $ 0,-20&�5�      ���#c5c8cc$��	0 0 0 1.5q�5�   !   5�      �� 5�      $ Vertical=�6!   $��Center=�68   .+�5�      �� $��0,0,0,30q�6!   $��Center=�63   #���  6P   ���#05b790���#ffffff$��18(�5�      $	��180��5�      $��45��5�      +  %MaterialDesignThemes.Wpf.ButtonAssist    CornerRadius$  22��5�      6I   �� 5�      -   5        #��[ 5�        
 continueAsObserver#��� 
 6M   6�   5�      5�      5�      5�      5�      5�      