   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:TrackSpace.Forms.SideMenusTrackSpace.Forms.SideMenus  2    ,TrackSpace.Forms.SideMenus.SideMenuOrganizer   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     :local(clr-namespace:TrackSpace.Forms.SideMenus     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  .��� .+��� $��
0 40 760 0q�.+��� -     �� SelectedIndex$  0�� �� SelectionMode$ Single=�   SideMenu#���   ����  �� 
TargetType" ��.���  �� Property � �� �� Value$ Center=���  � ��$ 0,0,0,0q���  � �� ��  �� 
TargetType" ��.R��� $��Border�� �� Padding$ 2q� J� SnapsToDevicePixels$
 true��._�� #��z��.+��� $��Center=�$��Center=� �� Triggers P� 	 P� Property	 �@J�IsMouseOver
 P� Value$

 True��. ���  �� 
TargetName$ Border��  	Secondary# �   � ��P� 	 �@��
IsSelected$

 True��. ��� $ Border��# �   � ��.@��� -   $��competitionsItem��
 � Tag$ CompetitionsPage��.���� $��Center=�.+�'  !MaterialDesignThemes.Wpf.PackIcon  
�������   Kind$ Event=�$��40��$��30��$��Center=��� 
�������$
��Bold"�$��18(�  competitions#���  �� -   $��myCompetitionItem��$ MyCompetitionsPage��.���� $��Center=�.+�  
�������$	 Eye=�$��40��$��30��$��Center=��� $��Center=�
�������$
��Bold"�$��18(�  myCompetitions#���  �� -   $��addCompetitionItem��$ AddCompetitionPage��.���� $��Center=�.+�  
�������$ AddBox=�$��40��$��30��$��Center=��� $��Center=�
�������$
��Bold"�$��18(�  addCompetition#���  �� -   $��settingsItem��$��	0 180 0 0q�$ SettingsPage��.���� $��Center=�.+�  
�������$ Settings=�$��40��$��30��$��Center=��� 
�������$
��Bold"�$��18(�  settings#���  �� -   $��
logoutItem��$ Logout��.���� $��Center=�.+�  
�������$ Logout=�$��40��$��30��$��Center=��� 
�������$
��Bold"�$��18(�  exit#���  