   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      0    *TrackSpace.Forms.Pages.CompetitionInfoPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	         AppFont#���   5      $��18(�6*     � 	Resources  5      1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter��%   &	         5   
   6+   5      .��5      � 
�������.+�5   
   ��  . *MaterialDesignFloatingActionMiniDarkButton#��[ 5      $��45��6E   $��45��6P     Primary#���  6\    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��5      $��Bottom=�66   $��	0 0 15 15q�6Q   $��Right=�6d   ��5      �� *GoBackCommand+{�5      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5      '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5      $��30��5         Kind$ 	ArrowBack=�5      5      �� 5   
   $
��Left=�6   $��15,10,0,415q�6+   $
��Bold"�5      $��40(�6   
���   ���5   @   �� *Competition.Name+5   !   �� 5!   
    �� Orientation$ 
Horizontal=�6   $��15,70,0,415q�6.   .+�5"      �� $
��Left=�6   $��Date:��6/   
���   �5#      �� 5$      $
��Left=�6   
���   ���6/   �� *Competition.Start+ �� StringFormat$ {0:dd.MM.yyyy.}��5%      5&      5(      5)      