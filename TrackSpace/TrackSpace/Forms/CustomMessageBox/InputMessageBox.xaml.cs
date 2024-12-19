using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using TrackSpace.ViewModel;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.CustomMessageBox
{
    
    public partial class InputMessageBox : Window
    {
        private string helperText;
        private string hint;
        private string title;
        private Action<object> onConfirm;
        private Action<object> onCancel;
        private bool watch;
        private DateTime start;
        public InputMessageBox(string title,string hint,string helperText,bool watch,DateTime start,Action<object> onConfirm,Action<object> onCancel)
        {
            this.title = title;
            this.hint = hint;
            this.helperText = helperText;
            this.onConfirm = onConfirm;
            this.onCancel = onCancel;
            this.watch = watch;
            this.start = start;
            DataContext = new EventStartViewModel(start);
            InitializeComponent();
            titleLbl.Content = title;
            if (watch == false)
            {
                messageTextBlock.Visibility = Visibility.Visible;
                HintAssist.SetHint(messageTextBlock, hint);
                HintAssist.SetHelperText(messageTextBlock, helperText);
            }
            else
            {
                timePicker.Visibility = Visibility.Visible;
                HintAssist.SetHint(timePicker, hint);
                HintAssist.SetHelperText(timePicker, helperText);

            }
        }


        private void CloseFormClickBtn(object sender, RoutedEventArgs e)
        {
            if (e.Source is Button)
            {
                this.Close();
            }
        }


        private void ConfirmButtonClick(object sender, RoutedEventArgs e)
        {
            if (e.Source is Button)
            {
                if (DataContext is EventStartViewModel)
               { 
                    var ctx=DataContext as EventStartViewModel;
                    ViewModelLocator.AddCompetitionViewModel.EventStart = ctx.Start;
               }


                onConfirm.Invoke(sender);
            }
            CloseFormClickBtn(sender, e);

        }

        private void CancelButtonClick(object sender, RoutedEventArgs e)
        {
            if (e.Source is Button)
            {
                onCancel.Invoke(sender);
            }
            CloseFormClickBtn(sender, e);

        }

        private void CloseFormClick(object sender, RoutedEventArgs e)
        {
            CancelButtonClick(sender,e);
        }
        private void Border_Mouse_Down(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left && e.Source is not MaterialDesignThemes.Wpf.PackIcon)
            {
                this.DragMove();
            }
        }


    }
}
