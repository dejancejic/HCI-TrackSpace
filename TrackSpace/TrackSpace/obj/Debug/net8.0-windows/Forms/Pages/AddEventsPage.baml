   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      *    $TrackSpace.Forms.Pages.AddEventsPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5         AppFont#���   5	      $��18(�6(   .��5      � -   5        
�������.+�5   
   �� $	��150��6   $��Add Competition��6     Primary#���  67   
������� " MaterialDesignRaisedDarkButton#��[ 5      $��Center=�5      $	��Top=�6   $��	0,538,0,0q�5      $��36��6   ��5      �� *AddCompetitionCommand+5      �� 5   
   $
��Left=�6   $��18,10,0,517q�6+   $��
Add Events��6@   $
��Bold"�5      $��40(�6   
���   �6!   �� 5   
   -   5          ��Name$  closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��6�   �� *CloseCommand+.��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5      �� 5   
   $
��Left=�6   $��44,79,0,451q�6+   $��Running events:��6@   $
��Bold"�5      $��20(�6   
���   �6!   �� 5   
   $��23,115,511,92q�6   $
��Auto=�6.   .��5      �� -   5         ��Name$ running��5       �� Orientation$ Vertical=�6*   5      5       �� 5!   
   $
��Left=�6   $��286,79,0,464q�6+   $��Jumping events:��6A   $
��Bold"�5"      $��20(�6   
���   �6!   �� 5$   
   $
��Left=�6   $��537,79,0,462q�6+   $��Throwing events:��6A   $
��Bold"�5%      $��20(�6   
���   �6!   �� 5&   
   $��268,115,246,92q�6   $
��Auto=�6/   .��5'      �� -   5        $ jumping��5'      $ Vertical=�6+   5)      5*      �� 5+   
   $��522,115,11,92q�6   $
��Auto=�6.   .��5,      �� -   5        $ throwing��5,      $ Vertical=�6+   5.      5/      �� 53   
   -   5        $  	goBackBtn��53       . *MaterialDesignFloatingActionMiniDarkButton#��[ 55      $��45��6E   $��45��6P   #���  6\    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��56      $��Bottom=�66   $��	0 0 15 15q�6Q   $��Right=�6d   ��53   $   �� *GoBackCommand+{�54      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��57        $��30��58      $��30��59      $ 	ArrowBack=�5:      5;      5=      5>      