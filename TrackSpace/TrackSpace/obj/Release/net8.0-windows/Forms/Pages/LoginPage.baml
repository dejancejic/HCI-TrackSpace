   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  I)clr-namespace:TrackSpace.ViewModel.SharedTrackSpace.ViewModel.Shared  &     TrackSpace.Forms.Pages.LoginPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6local$clr-namespace:TrackSpace.Forms.Pages     _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  *utilsclr-namespace:TrackSpace.Utils  7locator)clr-namespace:TrackSpace.ViewModel.Shared    N� FontSize$  18(�   MaterialDesignFont N� 
FontFamily# �    N� Title$ 	LoginPage�� � DataContext �� 2   ,TrackSpace.ViewModel.Shared.ViewModelLocator   LoginViewModel �� Source# Z  � 	Resources  �� 
TargetType  HoverHighlightLabel �� Property	 �� Value
 �� Triggers P� Property P� Value  RoundedButtonStyle �� 
TargetType �� Triggers��%�  &	       &	 l     �� " ��.���  � ��	 �#05b790
 P�  �@J�IsMouseOver$
 True��. ���  � ��
	 ��  ��� " ��.���  � ��
	 ���� ��  � ��
	 ���� ��  � ��	 �� " ��.R�� .+�A� #��z���� $��Center=�$��Center=� P�  �@J�IsMouseOver$
 True��. ���  � ��
	 �����P�  � ��$
 True��. ���  � ��
	 �����.��� .+��� -   $��1�����#ffffff �� CornerRadius$ 	0 10 10 0��._�� .+��� 
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 14 0q����� *CloseFormCommand+.��'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�$��25��$��25�� J� Opacity$	 0.5Q��� 
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 40 0q����� *MinimizeFormCommand+.��  $ Minus=�$��25��$��25��$	 0.5Q���  �� Orientation$ 
Horizontal=�$��Bottom=�$��Right=�.+�d� 
������� $  MaterialDesignActionToggleButton#��[   switchLanguage � ToolTip# �  $��Right=�$��Bottom=�$��55��$��55��$��	0,0,15,14q� d� 	IsChecked �� *IsEnglishChecked+ �� Mode$ TwoWay=����� $6��0pack://application:,,,/Resources/serbianIcon.png��$��35��$��35��1  +MaterialDesignThemes.Wpf.ToggleButtonAssist   	OnContent �� $6��0pack://application:,,,/Resources/englishIcon.png��$��35��$��35���� $��Center=�$
��75 0q�.+�]� $��0,0,0,10q�.+�  ���#07bf96$ Account=�$��28��$��28��$��Center=�$��0,0,10,0q��� -    ��Name$ 
usernameTF�� % !MaterialDesignFloatingHintTextBox#��[   username)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �     FloatingOffset$ 0,-20&����#c5c8cc$��	0 0 0 1.5q����� *
Username+]� $��	0,27,0,50q�.+�  ���#07bf96$
 Lock=�$��28��$��28��$��Center=�$��0,0,10,0q�G� -    G�Name$ 
passwordTF�� # MaterialDesignRevealPasswordBox#��[   password# �  $ 0,-20&����#c5c8cc$��	0 0 0 1.5q��� $ Vertical=�$��Center=�.+��� $��0,0,0,30q�$��Center=� 		 login#��� 	 ���#05b790���#ffffff$��18(�$	��180��$��45��+  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 22������ *LoginCommand+�� #��[  
 continueAsObserver#��� 
 $��Center=�*  $Microsoft.Xaml.Behaviors.Interaction   Triggers +  %Microsoft.Xaml.Behaviors.EventTrigger     	EventName$ 	MouseDown��*  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 2	  ,Microsoft.Xaml.Behaviors.InvokeCommandAction	   	  Command �� *ShowObserverPageCommand+  	  CommandParameter  �� 