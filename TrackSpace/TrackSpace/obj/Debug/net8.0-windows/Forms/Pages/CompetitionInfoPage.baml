   M S B A M L   `   `   `  ����E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  5      3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  5      0    *TrackSpace.Forms.Pages.CompetitionInfoPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:TrackSpace.Forms.Pages     5      0utilsclr-namespace:TrackSpace.Utils     5      _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	         AppFont#���   5      $��18(�6*     � 	Resources  5      1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter(   "TrackSpace.Utils.DateTimeConverter  DateTimeConverter��%:   &	       &	        5   
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
   $:��4pack://application:,,,/Resources/descriptionIcon.png��6   $��40,93,54,384q�6O   $��50��6e   $��40��6p   6~   �� 5(   
   -   5         ��Name$ MeasureTextBlock��5(      $
��Wrap=�6W   $y�	Collapsed=�6k   ��6.   �� *Competition.Description+6k   �� 5)   
   -   5         ��Name$ DescriptionTextBox��5)      $	��280��5*      $	��280��5+      $	��180��5,      )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Description��5-      
 �� AcceptsReturn$

 True��5.       �� 
IsReadOnly$
 True��5/       �� 	IsEnabled$ False��50       �� TextWrapping$
 Wrap=�52      $��5 -5 5 0q�6   " �� VerticalScrollBarVisibility$
 Auto=�53      $��333,113,13,386q�6&   ��51      �� *Competition.Description+53   &   �� 56   
    �� Orientation$ 
Horizontal=�6   $��15,15,0,415q�6.   .+�57      �� $7��1pack://application:,,,/Resources/dateTimeIcon.png��6   $��50��6O   $��40��6Z   6h   �� 58      $
��Left=�6   $��5 60 0 0q�59      
���   ���5:      �� *Competition.Start+ �� 	Converter# [ 5;      5>      �� 5@   
   $ 
Horizontal=�6   $��15,125,0,415q�6.   .+�5A      �� $4��.pack://application:,,,/Resources/trackIcon.png��6   $��50��6L   $��50��6W   6e   �� 5C      $
��Left=�6   $��5 0 0 0q�60   
���   ���6A   �� **(Competition.PostNumberNavigation.Address+5D      �� 5E      $
��Left=�6   $��-8 0 0 0q�6/   $��,��6A   
���   �5F      5G      �� 5I   
   $
��Left=�6   $��70,145,0,400q�6+   
���   ���5J      �� *'%Competition.PostNumberNavigation.City+5K      �� 5O   
   $ 
Horizontal=�6   $��15,175,0,360q�6/   .+�5P      �� $6��0pack://application:,,,/Resources/contactIcon.png��6   $��50��6O   $��40��6Z   6h   �� 5R      $
��Left=�6   $��5 10 0 0q�60   
���   ���6B   �� *53Competition.IdUserNavigation.IdUserNavigation.Email+5S      5U      �� 5W   
   $ 
Horizontal=�6   $��15,230,0,301q�6.   .+�5X      ��   eventsW(#���  6   $��22(�69   $
��Bold"�6G   6[   �� 5Y      $��	-8 0 -8 0q�6A   $��22(�6T   $
��Bold"�6b   ��6   �� *Competition.Events.Count+6v   �� 5Z      $��)��6   $��22(�6    $
��Bold"�6.   6B   5\      �� 5_   
   #���  6   #���  69   $��18,200,23,0q�6a   $	��250��6v   $��1q�6�    �� CornerRadius$ 10��6�   ._�5`      &   System.Windows.Controls.DataGrid  $��2,1,2,1q�6     	Secondary   AlternatingRowBackground# �  6)      AutoGenerateColumns$ False��5b         SelectionMode$ Single=�5c         SelectionUnit$ FullRow=�5d         CanUserAddRows$ False��5e      $   HorizontalScrollBarVisibility$ Disabled=�5f      "   VerticalScrollBarVisibility$ Hidden=�5g      ��5a      �� *Competition.Events+   ColumnHeaderStyle 5i      �� 5j       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6    �� BasedOn# [B 6>   .�5k      ��  �� Property � �� �� Value$ Center=�6G   �� 5l       � ��# �  67   �� 5m       � ��$ 16(�65   5n         	CellStyle 5q      �� 5r      *  $System.Windows.Controls.DataGridCell"  6   .�5s      ��  �@��TextAlignment$ Center=�6D   �� 5t       � ��$ Center=�6G   �� 5u       � ��$ Center=�6E   �� 5v       � ��$ 0 3 0 0q�63   �� 5w       � ��$	 180��65   �� 5x       � ��$ 30��66   �� 5y       � ��$ 16(�65   5z         RowStyle 5}      �� 5~      )  #System.Windows.Controls.DataGridRow"  6   .�5      ��  � ��$ 30��63   5�          Columns  5�      4	  .System.Windows.Controls.DataGridTemplateColumn	  5�       	 event,
  &System.Windows.Controls.DataGridColumn! 
  Header#! �  6-   " 	  CellTemplate" 5�      �� 5�      .R�5�   "   �� $
��Left=�6,   $��20 0 0 0q�6G   �� 5�      -   5        # �� TextDecorations$
# None{�5�   9   
���   �.�6c   .�5�      �� $
��Bold"�6;   $
��Wrap=�6M   ��6%   �� *Name+��5�   .   �� 5�   2   " ��68   $ �� Triggers$ 5�   6   �� 5�   :   % �� Binding% 6F   �� *IsMouseOver+ �� *Self+& �� Value& True6�   .a�5�   >   ��  � ��
 ��  �6[   5�   ;   5�   3   5�      5�      5�      5�      5�      0  *System.Windows.Controls.DataGridTextColumn  5�       	 start#! �  6)   ' 
  
IsReadOnly$
' True��6~   1  +System.Windows.Controls.DataGridBoundColumn(   Binding( 6J   �� *Start+) �� StringFormat$) 	{0:HH:mm}��6~     5�       	 category#! � 	 6)   $
' True��6{   ( 6M   �� *IdCategoryNavigation.Name+6{     5�       
 competitorsNo(#! � 
 6)   $
' True��6~   ( 6S   �� *CompetitorEvents.Count+6~   5�      5�      �� 5�   
   -   5        $ enterCompetitionBtn��5�      $y�Hidden=�6/   $��	0,0,15,15q�6C   $��Center=�6V   $��Bottom=�6t     enterCompetition#���  6�   #���  5�      ���#ffffff$��18(�5�      $	��190��5�      $��45��5�      +  %MaterialDesignThemes.Wpf.ButtonAssist*   CornerRadius$* 22��5�      ��6/   �� *EnterCompetitionCommand+6]   5�      5�      