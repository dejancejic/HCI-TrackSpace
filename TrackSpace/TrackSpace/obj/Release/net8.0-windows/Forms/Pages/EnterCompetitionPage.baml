   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  1    +TrackSpace.Forms.Pages.EnterCompetitionPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6local$clr-namespace:TrackSpace.Forms.Pages     0utilsclr-namespace:TrackSpace.Utils     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     AppFont#���   $��18(�  � 	Resources  1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter(   "TrackSpace.Utils.DateTimeConverter  DateTimeConverter;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%-   &	       &	      &	 
           .��� 
�������.+���  . *MaterialDesignFloatingActionMiniDarkButton#��[ $��45��$��45��  Primary#���   � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��$��Bottom=�$��	0 0 15 15q�$��Right=����� *GoBackCommand+{��� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��'  !MaterialDesignThemes.Wpf.PackIcon  $��30��$��30��   Kind$ 	ArrowBack=��� -    ��Name$ closeBtn��
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 14 0q����� *CloseCommand+.��  $ Close=�$��25��$��25�� J� Opacity$	 0.5Q��� 
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 40 0q����� *MinimizeCommand+.��  $ Minus=�$��25��$��25��$	 0.5Q��� $
��Left=�$��15,10,0,415q�$
��Bold"�$��40(�
���   ����� *Competition.Name+�� $
��Left=�$��25,95,0,415q� 
 events#���  $
��Bold"�$��22(�
���   ��� $��Right=�$��0,95,342,421q�  competitorsNo(#���  $
��Bold"�$��22(�
���   ��� #���  #���  $
��Left=�$��
25,130,0,0q�$	��Top=�$	��310��$��1q� �� CornerRadius$ 10��._�� .+�&   System.Windows.Controls.DataGrid  -     Name$ dataGrid��$��2,1,2,1q�  	Secondary	   AlternatingRowBackground#	 �  
   AutoGenerateColumns$
 False��   SelectionMode$ Single=�   CanUserSortColumns$ false��   CanUserResizeColumns$ False��   CanUserReorderColumns$ False��   CanUserDeleteRows$ False��   SelectionUnit$ FullRow=�   CanUserAddRows$ False��$   HorizontalScrollBarVisibility$ Disabled=�"   VerticalScrollBarVisibility$ Hidden=����� *Competition.Events+   ColumnHeaderStyle ��  �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"   �� BasedOn# [B .���  �� Property � �� �� Value$ Center=���  � ��# �  ��  � ��$ 16(�   	CellStyle �� *  $System.Windows.Controls.DataGridCell"  .���  �@��TextAlignment$ Center=���  � ��$ Center=���  � ��$ Center=���  � ��$ 0 3 0 0q���  � ��$	 100����  � ��$ 30����  � ��$ 16(�   RowStyle �� )  #System.Windows.Controls.DataGridRow"  .���  � ��$ 30��   Columns 0	  *System.Windows.Controls.DataGridTextColumn	   		 event,
  &System.Windows.Controls.DataGridColumn 
  Header# � 	  
  
IsReadOnly$
 True��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Name+	   
 category# � 
 $
 True�� �� *IdCategoryNavigation.Name+�� $��10(�  noEvents#���  $��Center=�$��Center=�
�������y��� *Competition.Events.Count+ �� 	Converter# [ �� #���  #���  $	��450��$��Right=�$��
0,130,25,0q�$	��Top=�$	��310��$��1q�$ 10��._�� .+�  -   $ dataGridCompetitors��$��2,1,2,1q�#	 �  $
 False��$ Single=�$ False��$ FullRow=�$ False��$ False��$ False��$ False��$ Disabled=�$ Hidden=����� *EntryModels+ �� "  # [B .���  � ��$ Center=���  � ��# �  ��  � ��$ 16(� �� "  .���  �@��TextAlignment$ Center=���  � ��$ Center=���  � ��$ Center=���  � ��$ 0 3 0 0q���  � ��$	 120����  � ��$ 30����  � ��$ 16(� �� "  .���  � ��$ 30�� 	    name# �  $
 True�� �� *Competitor.Name+	    surname# �  $
 True�� �� *Competitor.Surname+	  # � 
 $
 True�� �� *&$Competitor.IdCategoryNavigation.Name+4  .System.Windows.Controls.DataGridTemplateColumn  $  ��    CellTemplate  �� .R��� $��checkBox��-   $��	20,-3,0,0q�
���   �! d� 	IsChecked! �� *	IsChecked+" �� Mode$" TwoWay=���   noCompetitorsToShow#���  $��Center=�$��Center=�
�������y��� *EntryModels.Count+# [ �� -   $ confirmEntires��$��	0,0,15,15q�$��Center=�$��Bottom=�  confirmEntries#���  #���  ���#ffffff$��18(�$	��190��$��45��+  %MaterialDesignThemes.Wpf.ButtonAssist#   CornerRadius$# 22������ *ConfirmEntriesCommand+