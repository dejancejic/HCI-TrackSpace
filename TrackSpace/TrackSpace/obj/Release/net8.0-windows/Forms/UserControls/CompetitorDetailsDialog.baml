   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:TrackSpace.Forms.UserControlsTrackSpace.Forms.UserControls  3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  ;    5TrackSpace.Forms.UserControls.CompetitorDetailsDialog   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     =local+clr-namespace:TrackSpace.Forms.UserControls     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  *utilsclr-namespace:TrackSpace.Utils    � 	Resources  1   +TrackSpace.Utils.GenderTranslationConverter   GenderTranslationConverter��%   &	          .��� .+�)  #MaterialDesignThemes.Wpf.DialogHost  -     Name$ UserDetailsDialogHost��   DialogContent �� $��16q�$��Center=�$	��400��.+���   competitorDetails#���  $
��Bold"�$��0,0,0,16q�$��Center=��� $��80��$��80�� �� CornerRadius$ 40��  PrimaryHueMidBrush#���  $��Center=�$��0,0,0,16q�._�'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ AccountCircleOutline=�$��80��$��80��$��Center=�$��Center=���  �� Orientation$ 
Horizontal=�$
��Left=�$��10,8,0,8q�.+���   nameDot#���  $
��Bold"�$��Center=��� $��Center=����� *SelectedCompetitor.Name+�� $�� ���� $��Center=����� *SelectedCompetitor.Surname+�� $ 
Horizontal=�$
��Left=�$��	10,28,0,8q�.+���   categoryDot#���  $
��Bold"�$��Center=��� $��Center=����� *.,SelectedCompetitor.IdCategoryNavigation.Name+�� $ 
Horizontal=�$
��Left=�$��10,8,0,8q�.+���  
 DoBDot#���  $
��Bold"�$��Center=��� $��Center=����� *SelectedCompetitor.Dob+ �� StringFormat$ {0:dd.MM.yyyy.}���� $ 
Horizontal=�$
��Left=�$��10,8,0,8q�.+���   	genderDot#���  $
��Bold"�$��Center=��� $��Center=����� *SelectedCompetitor.Pol+ �� 	Converter# [  �� $	��120�� 	 close#���    Primary#���  
������� "	 MaterialDesignRaisedDarkButton#��[	    CloseDialogCommand#��Z $��Center=�$��0,30,0,0q�.���� -   	 ��Name$	 MainContentControl������ *MainContent+