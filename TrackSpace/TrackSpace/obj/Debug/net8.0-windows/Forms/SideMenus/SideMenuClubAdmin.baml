   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:TrackSpace.Forms.SideMenusTrackSpace.Forms.SideMenus  5      2    ,TrackSpace.Forms.SideMenus.SideMenuClubAdmin   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:TrackSpace.Forms.SideMenus     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      .��5
      � .+�5   
   �� $��
0 40 760 0q�6   .+�5      �� -   5          �� SelectedIndex$  0��5       �� SelectionMode$ Single=�6)      SideMenu#���   6@   ��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � �� �� Value$ Center=�6G   �� 5       � ��$ 0,0,0,0q�63   �� 5       � �� 5      �� 5   "    �� 
TargetType" ��62   .R�5   &   �� $��Border��6-    �� Padding$ 2q�6;    J� SnapsToDevicePixels$
 true��6G   ._�5   *   � #��z��6/   .+�5   .   �� $��Center=�6?   $��Center=�6\   5   +   5   '    �� Triggers 5   &   P� 5   *   	 P� Property	 �@J�IsMouseOver
 P� Value$

 True��6I   . �5   .   ��  �� 
TargetName$ Border��65     	Secondary# �  6_    � ��5   +   P� 5   *   	 �@��
IsSelected$

 True��6H   . �5   .   �� $ Border��65   # �  6_    � ��5   +   5!   #   5#      5$      .@�5'      �� -   5        $��	clubsItem��5'   /   
 � Tag$ 	ClubsPage��6   .��5(      �� $��Center=�6!   .+�5)      '  !MaterialDesignThemes.Wpf.PackIcon  
�������   Kind$ ShieldStarOutline=�6E   $��40��6^   $��30��6j   $��Center=�6u   �� 5*      $��Center=�6    
�������$
��Bold"�6P   $��18(�6b    	 clubs#���  6p   5+      5,      �� 5-      -   5        $��competitionsItem��5-   6   $ CompetitionsPage��6   .��5.      �� $��Center=�6!   .+�5/        
�������$ TrophyOutline=�6E   $��40��6Z   $��30��6f   $��Center=�6q   �� 50      
�������$
��Bold"�63   $��18(�6E     competitions#���  6S   51      52      �� 53      -   5        $��
myclubItem��53   0   $ 
MyClubPage��6   .��54      �� $��Center=�6!   .+�55        
�������$ ShieldAccountOutline=�6E   $��40��6a   $��30��6m   $��Center=�6x   �� 56      $��Center=�6    
�������$
��Bold"�6P   $��18(�6b    
 myClub#���  6p   57      58      �� 59      -   5        $��settingsItem��59   F   $��	0 170 0 0q�6   $ SettingsPage��63   .��5:      �� $��Center=�6!   .+�5;        
�������$ Settings=�6E   $��40��6U   $��30��6a   $��Center=�6l   �� 5<      
�������$
��Bold"�63   $��18(�6E     settings#���  6S   5=      5>      �� 5?      -   5        $��
logoutItem��5?   ,   $ Logout��6   .��5@      �� $��Center=�6!   .+�5A        
�������$ Logout=�6E   $��40��6S   $��30��6_   $��Center=�6j   �� 5B      
�������$
��Bold"�63   $��18(�6E     exit#���  6S   5C      5D      5F      5G      5H      5I      