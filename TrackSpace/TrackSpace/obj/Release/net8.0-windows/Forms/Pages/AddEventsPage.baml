   M S B A M L   `   `   `  ���� E  ATrackSpace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrackSpace.Forms.PagesTrackSpace.Forms.Pages  3clr-namespace:TrackSpace.UtilsTrackSpace.Utils  *    $TrackSpace.Forms.Pages.AddEventsPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6local$clr-namespace:TrackSpace.Forms.Pages     0utilsclr-namespace:TrackSpace.Utils     _ [MaterialDesignThemes.Wpf, Version=5.1.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes     AppFont#���   $��18(�  � 	Resources  ;   5TrackSpace.Utils.EmptyCollectionToVisibilityConverter ( $EmptyCollectionToVisibilityConverter��%   &	         .��� -   
�������.+��� $	��170��  addNewCompetition#���    Primary#���  
������� " MaterialDesignRaisedDarkButton#��[ $��Center=�$	��Top=�$��	0,538,0,0q�$��36������ *AddCompetitionCommand+�� $
��Left=�$��18,10,0,517q�  	addEvents#���  $
��Bold"�$��40(�
���   ��� -    ��Name$ closeBtn��
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 14 0q����� *CloseCommand+.��'  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�$��25��$��25�� J� Opacity$	 0.5Q��� 
������ 
������ $��5 0 0 0q�$��Right=�$	��Top=�$��	0 13 40 0q����� *MinimizeCommand+.��  $ Minus=�$��25��$��25��$	 0.5Q��� $��16,141,423,100q�$
��Auto=�.���� -    ��Name$ running��$��0 0 10 0q� �� Orientation$ Vertical=��� $��16,141,423,100q�$��Hidden=�.���� -   $ jumping��$��0 0 10 0q�$ Vertical=��� $��16,141,423,100q�$��Hidden=�.���� -   $ throwing��$��0 0 10 0q�$ Vertical=��� #���  $��16,141,418,100q�$��1q� �� CornerRadius$ 10���� #���  $��414,141,20,100q�$��1q�$ 10���� $��412,141,27,100q�$
��Auto=�.���� -   $ selected��$��0 0 10 0q�$ Vertical=�.+���   noEventsSelected#���  $��
10 170 0 0q�$��Center=�
�������y��� *CountSelected+ �� 	Converter# [ �� $
��Bold"�$��Right=�$��0,100,188,0q�  selectedEvents#���  $��92��$	��Top=��� $��16(�$��23,72,458,461q� 
 events)  #MaterialDesignThemes.Wpf.HintAssist   Hint# �    	 MaterialDesignFilledComboBox#��[	 	 �� SelectedIndex$	 0��{��� *	IsChecked+
 �� ElementName$#
 FilledComboBoxEnabledCheckBox������ *Types+ �� SelectedItem �� *SelectedType+ �� Mode$ TwoWay=��� -   $ 	goBackBtn�� .
 *MaterialDesignFloatingActionMiniDarkButton#��[
 $��45��$��45��#���   � ToolTip$0 *MaterialDesignFloatingActionMiniDarkButton��$��Bottom=�$��	0 0 15 15q�$��Right=����� *GoBackCommand+{��� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType
 Window.��  $��30��$��30��$ 	ArrowBack=�