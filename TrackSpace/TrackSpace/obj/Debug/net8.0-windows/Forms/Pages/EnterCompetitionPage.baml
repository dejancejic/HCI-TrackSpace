   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      1    +TrackSpace.Forms.Pages.EnterCompetitionPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	         AppFont#���   5      $��18(�6(     � 	Resources  5      1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter(   "TrackSpace.Utils.DateTimeConverter  DateTimeConverter��%:   &	       &	        5   
   6+     5   
   6"   5      .��5      � 
�������.+�5   
   ��  . *MaterialDesignFloatingActionMiniDarkButton#��[ 5      $��45��6E   $��45��6P     Primary#���  6\    � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��5      $��Bottom=�66   $��	0 0 15 15q�6Q   $��Right=�6d   ��5      �� *GoBackCommand+{�5      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��5      '  !MaterialDesignThemes.Wpf.PackIcon  $��30��5      $��30��5         Kind$ 	ArrowBack=�5      5      �� 5   
   -   5         ��Name$ closeBtn��5      
������ 
������ $��5 0 0 0q�6V   $��Right=�6h   $	��Top=�6�   $��	0 13 14 0q�6�   ��5      �� *CloseCommand+.��5         $ Close=�6&   $��25��63   $��25��6>    J� Opacity$	 0.5Q�6J   5!      �� 5#   
   $
��Left=�6   $��15,10,0,415q�6+   $
��Bold"�5$      $��40(�6   
���   ���5#   @   �� *Competition.Name+5$   !   �� 5&   
   $
��Left=�6   $��25,95,0,415q�6+    
 events#���  6A   $
��Bold"�5'      $��22(�6   
���   �6!   �� 5)   
   $��Right=�6   $��0,95,342,421q�6,     competitorsNo(#���  6C   $
��Bold"�5*      $��22(�6   
���   �6!   �� 5,   
   #���  6   #���  69   $
��Left=�5-      $��
25,130,0,0q�6.   $	��Top=�6B   $	��310��6Z   $��1q�6g    �� CornerRadius$ 10��6{   ._�5.      &   System.Windows.Controls.DataGrid  -   5          Name$ dataGrid��5.      $��2,1,2,1q�6)     	Secondary	   AlternatingRowBackground#	 �  6;   
   AutoGenerateColumns$
 False��51         SelectionMode$ Single=�52         CanUserSortColumns$ false��53         CanUserResizeColumns$ False��54         CanUserReorderColumns$ False��55         CanUserDeleteRows$ False��56         SelectionUnit$ FullRow=�57         CanUserAddRows$ False��58      $   HorizontalScrollBarVisibility$ Disabled=�59      "   VerticalScrollBarVisibility$ Hidden=�5:      ��5/      �� *Competition.Events+   ColumnHeaderStyle 5<      �� 5=       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    �� BasedOn# [B 6>   .�5>      ��  �� Property � �� �� Value$ Center=�6G   �� 5?       � ��# �  67   �� 5@       � ��$ 16(�65   5A         	CellStyle 5D      �� 5E      *  $System.Windows.Controls.DataGridCell"  6   .�5F      ��  �@��TextAlignment$ Center=�6D   �� 5G       � ��$ Center=�6G   �� 5H       � ��$ Center=�6E   �� 5I       � ��$ 0 3 0 0q�63   �� 5J       � ��$	 100��65   �� 5K       � ��$ 30��66   �� 5L       � ��$ 16(�65   5M         RowStyle 5P      �� 5Q      )  #System.Windows.Controls.DataGridRow"  6   .�5R      ��  � ��$ 30��63   5S         Columns 5V      0  *System.Windows.Controls.DataGridTextColumn  5W       	 event,	  &System.Windows.Controls.DataGridColumn 	  Header# �  6)    	  
IsReadOnly$
 True��6c   1
  +System.Windows.Controls.DataGridBoundColumn 
  Binding 6J   �� *Name+6c     5X       	 category# � 	 6)   $
 True��6{    6M   �� *IdCategoryNavigation.Name+6{   5\      5]      �� 5b   
   #���  6   #���  69   $	��450��6a   $��Right=�5c      $��
0,130,25,0q�6.   $	��Top=�5d      $	��310��6*   $��1q�67   $ 10��6K   ._�5e        -   5        $ dataGridCompetitors��5e      $��2,1,2,1q�64   #	 �  6F   $
 False��5g      $ Single=�5h      $ False��5i      $ FullRow=�5j      $ False��5k      $ False��5l      $ False��5m      $ False��5n      $ Disabled=�5o      $ Hidden=�5p      ��5f      �� *EntryModels+ 5r      �� 5s      "  6   # [B 6>   .�5t      ��  � ��$ Center=�6G   �� 5u       � ��# �  67   �� 5v       � ��$ 16(�65   5w       5z      �� 5{      "  6   .�5|      ��  �@��TextAlignment$ Center=�6D   �� 5}       � ��$ Center=�6G   �� 5~       � ��$ Center=�6E   �� 5       � ��$ 0 3 0 0q�63   �� 5�       � ��$	 120��65   �� 5�       � ��$ 30��66   �� 5�       � ��$ 16(�65   5�       5�      �� 5�      "  6   .�5�      ��  � ��$ 30��63   5�       5�        5�       
 name# � 
 6)   $
 True��6m    6I   �� *Competitor.Name+6m     5�        surname# �  6)   $
 True��6s    6L   �� *Competitor.Surname+6s     5�      # � 	 6)   $
 True��6�    6M   �� *&$Competitor.IdCategoryNavigation.Name+6�   4  .System.Windows.Controls.DataGridTemplateColumn  5�      $  ��6-      CellTemplate 5�      �� 5�      .R�5�   "   �� $��checkBox��6+   -   5        $��	20,-3,0,0q�5�   h     d� 	IsChecked  6;   �� *	IsChecked+! �� Mode$! TwoWay=�5�   J   5�      5�      5�      5�      �� 5�   
   -   5        $ confirmEntires��5�      $��	0,0,15,15q�6*   $��Center=�6=   $��Bottom=�6[     confirmEntries#���  5�      #���  5�      ���#ffffff$��18(�5�      $	��190��5�      $��45��5�      +  %MaterialDesignThemes.Wpf.ButtonAssist"   CornerRadius$" 22��5�      ��6/   �� *ConfirmEntriesCommand+6[   5�      5�      