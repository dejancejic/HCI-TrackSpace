   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:TrackSpace.Forms.WindowsTrackSpace.Forms.Windows  5   	   0    *TrackSpace.Forms.Windows.ClubAdminMainPage   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:TrackSpace.Forms.Windows     5   	   _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  ClubAdminMainPage��5	   	   $	��650��6#   $
��1000��60    � WindowStartupLocation$ CenterScreen=�5
   	    � WindowStyle$
 None=�5   	   
������  � AllowsTransparency$
 True��5       � 
ResizeMode$ NoResize=�5      $��18(�5         AppFont#���   5       � 	Resources 5        ClubAdminSideMenu �� SelectedIndex �� SelectionMode  SideMenu �� 
TargetType	 �� Property
 �� Value �� 
TargetType �� Padding J� SnapsToDevicePixels �� Triggers P� Property P� Value �� 
TargetName  	Secondary
 � Tag'  !MaterialDesignThemes.Wpf.PackIcon   Kind 	 clubs  competitions  settings 
 logout��%�  &	       �� 5   
   .R�5      �� $��
0 40 760 0q�6   .+�5      �� -   5        $ 0��5      $ Single=�6-   #���  6D   ��5      �� 5      " ��6    .�5      �� 	 � ��$
 Center=�6K   �� 5      	 � ��$
 0,0,0,0q�67   �� 5      	 � ��
 5   "   �� 5   &   " ��66   .R�5   *   �� $��Border��61   $ 2q�6?   $
 true��6K   ._�5    .   � #��z��63   .+�5!   2   �� $��Center=�6C   $��Center=�6`   5"   /   5#   +    5$   *   P� 5%   .    �@J�IsMouseOver$
 True��6M   . �5&   2   �� $ Border��69   #
 �  6c   	 � ��5'   /   P� 5(   .    �@��
IsSelected$
 True��6L   . �5)   2   �� $ Border��69   #
 �  6c   	 � ��5*   /   5,   '   5.      5/      .@�52      �� $��	clubsItem��63   $ 	ClubsPage��6#   .��53      �� $��Center=�6%   .+�54        
�������$ BadgeAccountHorizontal=�6I   $��30��6g   $��30��6s   $��Center=�6~   �� 55      $��Center=�6$   
�������$
��Bold"�6T   $��18(�6f   #���  6t   56      57      �� 58      $��competitionsItem��6:   $ CompetitionsPage��6#   .��59      �� $��Center=�6%   .+�5:        
�������$ Event=�6I   $��30��6V   $��30��6b   $��Center=�6m   �� 5;      
�������$
��Bold"�67   $��18(�6I   #���  6W   5<      5=      �� 5?      $��settingsItem��6J   $��	0 280 0 0q�6#   $ SettingsPage��67   .��5@      �� $��Center=�6%   .+�5A        
�������$ Settings=�6I   $��30��6Y   $��30��6e   $��Center=�6p   �� 5B      
�������$
��Bold"�67   $��18(�6I   #���  6W   5C      5D      �� 5E      $��
logoutItem��60   $ Logout��6#   .��5F      �� $��Center=�6%   .+�5G        
�������$ Logout=�6I   $��30��6W   $��30��6c   $��Center=�6n   �� 5H      
�������$
��Bold"�67   $��18(�6I   #���  6W   5I      5J      5K      5L      5N      5Q      .��5T      � .+�5U   
   '   !TrackSpace.Forms.Windows.BasePage  .��5V           SideMenuContent# [ 6   5W       � 5Y   
   -   5          �Name$ 	mainFrame��5Y   0     � NavigationUIVisibility$ Hidden=�6   $��220 58,0,42q�6D   $
��Left=�6Y   $	��755��6t   5Z      5[      