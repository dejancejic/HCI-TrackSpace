   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5	      I)clr-namespace:TrackSpace.ViewModel.SharedTrackSpace.ViewModel.Shared  5
      &     TrackSpace.Forms.Pages.LoginPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      *utilsclr-namespace:TrackSpace.Utils  5	      7locator)clr-namespace:TrackSpace.ViewModel.Shared  5
        N� FontSize$  18(�5         MaterialDesignFont N� 
FontFamily# �   5       N� Title$ 	LoginPage��5       � DataContext 5      �� 2   ,TrackSpace.ViewModel.Shared.ViewModelLocator   LoginViewModel �� Source# Z  � 	Resources 5       �� 
TargetType  HoverHighlightLabel �� Property	 �� Value
 �� Triggers P� Property P� Value  RoundedButtonStyle �� 
TargetType �� Triggers��%�  &	       &	 �     �� 5   
   " ��6   .�5      ��  � ��	 �#05b7906+   
 5      P� 5       �@J�IsMouseOver$
 True��61   . �5      ��  � ��
	 ��  �63   5      5      �� 5   
   " ��6   .�5      ��  � ��
	 ���� 6+   �� 5       � ��
	 ���� 6,   �� 5       � ��	 5      �� 5       " ��6&   .R�5!      � .+�5"      A� #��z��6&   �� 5#      $��Center=�6/   $��Center=�6L   5$       5%      P� 5&       �@J�IsMouseOver$
 True��6=   . �5'   "   ��  � ��
	 �����6?   5(      P� 5)       � ��$
 True��6;   . �5*   "   ��  � ��
	 �����6?   5+      5-      5/      50      52      .��53   
   � .+�55   
   �� -   5        $��1��55      ���#ffffff �� CornerRadius$ 	0 10 10 0��57      ._�5;      � .+�5<      �� 
������ 
������ $��5 0 0 0q�6L   $��Right=�6^   $	��Top=�6z   $��	0 13 14 0q�6�   ��6�   �� *CloseFormCommand+.��5=      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6.   $��25��6;   $��25��6F    J� Opacity$	 0.5Q�6R   5>      �� 5?      
������ 
������ $��5 0 0 0q�6L   $��Right=�6^   $	��Top=�6z   $��	0 13 40 0q�6�   ��6�   �� *MinimizeFormCommand+.��5@        $ Minus=�6.   $��25��6;   $��25��6F   $	 0.5Q�6R   5A      �� 5D       �� Orientation$ 
Horizontal=�6   $��Bottom=�66   $��Right=�6Q   .+�5F      d� 
������� $  MaterialDesignActionToggleButton#��[ 5H        switchLanguage � ToolTip# �  5I      $��Right=�5J      $��Bottom=�5K      $��55��5L      $��55��6   $��	0,0,15,14q�5M       d� 	IsChecked 5G      �� *IsEnglishChecked+ �� Mode$ TwoWay=���5O      �� 5P      $6��0pack://application:,,,/Resources/serbianIcon.png��6$   $��35��6^   $��35��6i   1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   	OnContent 5R      �� 5S      $6��0pack://application:,,,/Resources/englishIcon.png��6$   $��35��6^   $��35��6i   5U      5[      �� 5`      $��Center=�6   $
��75 0q�5a      .+�5c      ]� $��0,0,0,10q�6    .+�5d        ���#07bf96$ Account=�6G   $��28��6V   $��28��6a   $��Center=�6m   $��0,0,10,0q�6�   �� 5e      -   5         ��Name$ 
usernameTF��5e   "    % !MaterialDesignFloatingHintTextBox#��[ 6k     username)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �  6�      FloatingOffset$ 0,-20&�5f      ���#c5c8cc$��	0 0 0 1.5q�5h      ��5e   Q   �� *
Username+5h      5i      ]� 5j      $��	0,27,0,50q�6    .+�5k        ���#07bf96$
 Lock=�6G   $��28��6S   $��28��6^   $��Center=�6j   $��0,0,10,0q�6�   G� 5l      -   5         G�Name$ 
passwordTF��5l   &    # MaterialDesignRevealPasswordBox#��[ 6:     password# �  6s   $ 0,-20&�5o      ���#c5c8cc$��	0 0 0 1.5q�5q      5r      �� 5t      $ Vertical=�6!   $��Center=�68   .+�5u      �� $��0,0,0,30q�6!   $��Center=�63    		 login#��� 	 6P   ���#05b790���#ffffff$��18(�5x      $	��180��5y      $��45��5z      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 22��5{      ��6C   �� *LoginCommand+6f   �� 5~      #��[ 6     
 continueAsObserver#��� 
 6M   $��Center=�6|   *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5      +  %Microsoft.Xaml.Behaviors.EventTrigger  5�   "      	EventName$ 	MouseDown��61   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5�   &   2	  ,Microsoft.Xaml.Behaviors.InvokeCommandAction	   	  Command 6<   �� *ShowObserverPageCommand+  	  CommandParameter  6h   �� 5�   #   5�      5�      5�      5�      5�      5�      5�      