   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  0    *TrackSpace.Forms.Pages.CompetitionInfoPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6local$clr-namespace:TrackSpace.Forms.Pages     0utilsclr-namespace:TrackSpace.Utils     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     AppFont#���   $��18(�  � 	Resources  1   +TrackSpace.Utils.GenderTranslationConverter  GenderTranslationConverter(   "TrackSpace.Utils.DateTimeConverter  DateTimeConverter;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%-   &	       &	      &	 
           .��� 
�������.+���  . *MaterialDesignFloatingActionMiniDarkButton#��[ $��45��$��45��  Primary#���   � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��$��Bottom=�$��	0 0 15 15q�$��Right=����� *GoBackCommand+{��� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��'  !MaterialDesignThemes.Wpf.PackIcon  $��30��$��30��   Kind$ 	ArrowBack=��� -   $��	deleteBtn��$y�Hidden=�#��[ $��45��$��45��#���  $0 *MaterialDesignFloatingActionMiniDarkButton��$��Bottom=�$��	15 0 0 15q�$
��Left=����� *DeleteCompetitionCommand+{��� *DataContext.ControlsEnabled+ �� *FindAncestor+
 Window.��  $��30��$��30��$ Delete=��� -    ��Name$ closeBtn��
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 14 0q����� *CloseCommand+.��  $ Close=�$��25��$��25�� J� Opacity$	 0.5Q��� $
��Left=�$��15,10,0,415q�$
��Bold"�$��40(�
���   ����� *Competition.Name+�� $:��4pack://application:,,,/Resources/descriptionIcon.png��$��40,93,54,384q�$��50��$��40���� -    ��Name$ MeasureTextBlock��$
��Wrap=�$y�	Collapsed=����� *Competition.Description+�� -    ��Name$ DescriptionTextBox��$	��280��$	��280��$	��180��)  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Description��
 �� AcceptsReturn$

 True�� �� 
IsReadOnly$
 True�� �� 	IsEnabled$ False�� �� TextWrapping$
 Wrap=�$��5 -5 5 0q�" �� VerticalScrollBarVisibility$
 Auto=�$��333,113,13,386q����� *Competition.Description+�� 
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 40 0q����� *MinimizeCommand+.��  $ Minus=�$��25��$��25��$	 0.5Q���  �� Orientation$ 
Horizontal=�$��15,15,0,415q�.+��� $7��1pack://application:,,,/Resources/dateTimeIcon.png��$��50��$��40���� $
��Left=�$��5 60 0 0q�
���   ����� *Competition.Start+ �� 	Converter# [ �� $ 
Horizontal=�$��15,125,0,415q�.+��� $4��.pack://application:,,,/Resources/trackIcon.png��$��50��$��50���� $
��Left=�$��5 0 0 0q�
���   ����� **(Competition.PostNumberNavigation.Address+�� $
��Left=�$��-8 0 0 0q�$��,��
���   ��� $
��Left=�$��70,145,0,400q�
���   ����� *'%Competition.PostNumberNavigation.City+�� $ 
Horizontal=�$��15,175,0,360q�.+��� $6��0pack://application:,,,/Resources/contactIcon.png��$��50��$��40���� $
��Left=�$��5 10 0 0q�
���   ����� *53Competition.IdUserNavigation.IdUserNavigation.Email+�� $ 
Horizontal=�$��15,230,0,301q�.+���   eventsW(#���  $��22(�$
��Bold"��� $��	-8 0 -8 0q�$��22(�$
��Bold"����� *Competition.Events.Count+�� $��)��$��22(�$
��Bold"��� #���  #���  $��18,200,23,0q�$	��250��$��1q� �� CornerRadius$ 10��._�� .+�&   System.Windows.Controls.DataGrid  $��2,1,2,1q�  	Secondary   AlternatingRowBackground# �     AutoGenerateColumns$ False��   SelectionMode$ Single=�   SelectionUnit$ FullRow=�   CanUserAddRows$ False��$   HorizontalScrollBarVisibility$ Disabled=�"   VerticalScrollBarVisibility$ Hidden=����� *Competition.Events+   ColumnHeaderStyle ��  �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"   �� BasedOn# [B .���  �� Property � �� �� Value$ Center=���  � ��# �  ��  � ��$ 16(�   	CellStyle �� *  $System.Windows.Controls.DataGridCell"  .���  �@��TextAlignment$ Center=���  � ��$ Center=���  � ��$ Center=���  � ��$ 0 3 0 0q���  � ��$	 180����  � ��$ 30����  � ��$ 16(�   RowStyle �� )	  #System.Windows.Controls.DataGridRow" 	 .���  � ��$ 30��    Columns  4
  .System.Windows.Controls.DataGridTemplateColumn
   	 event,  &System.Windows.Controls.DataGridColumn!   Header#! �  " 
  CellTemplate" �� .R��� $
��Left=�$��20 0 0 0q��� -   # �� TextDecorations$
# None{�
���   �.�.��� $
��Bold"�$
��Wrap=����� *Name+���� " ��$ �� Triggers$ �� % �� Binding% �� *IsMouseOver+ �� *Self+& �� Value& True.a���  � ��
 ��  �0  *System.Windows.Controls.DataGridTextColumn   		 start#! � 	 '   
IsReadOnly$
' True��1  +System.Windows.Controls.DataGridBoundColumn(   Binding( �� *Start+) �� StringFormat$) 	{0:HH:mm}��   
 category#! � 
 $
' True��( �� *IdCategoryNavigation.Name+    competitorsNo(#! �  $
' True��( �� *CompetitorEvents.Count+��   noEvents#���  $��Center=�$��Center=�
�������y��� *Competition.Events+# [ �� -   $ enterCompetitionBtn��$y�Hidden=�$��	0,0,15,15q�$��Center=�$��Bottom=�  enterCompetition#���  #���  ���#ffffff$��18(�$	��190��$��45��+  %MaterialDesignThemes.Wpf.ButtonAssist*   CornerRadius$* 22������ *EnterCompetitionCommand+