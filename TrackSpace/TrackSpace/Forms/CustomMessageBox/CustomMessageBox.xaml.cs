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

namespace TrackSpace.Forms.CustomMessageBox
{
    
    public partial class CustomMessageBox : Window
    {
        private bool yesNo;
        private bool infoMessage;
        private string title;
        private string message;
        private Action<object> onYes;
        private Action<object> onNo;
        public CustomMessageBox(bool yesNo,bool infoMessage,string title,string message, Action<object>? onYes=null, Action<object>? onNo = null)
        {
            InitializeComponent();
            this.yesNo = yesNo;
            this.infoMessage= infoMessage;
            this.title = title;
            this.message = message;
            this.onYes = onYes ?? (obj => { });
            this.onNo = onNo ?? (obj => { });

            titleLbl.Content = title;
            messageTextBlock.Text= message;

            if (infoMessage == false)
            {
                titleIcon.Kind = MaterialDesignThemes.Wpf.PackIconKind.Dangerous;
            }
            if (yesNo)
            { 
                yesBtn.Visibility= Visibility.Visible;
               noBtn.Visibility = Visibility.Visible;
            }
            else
            {
                okBtn.Visibility = Visibility.Visible;
            }

        }


        private void Border_Mouse_Down(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left && e.Source is not MaterialDesignThemes.Wpf.PackIcon)
            {
                this.DragMove();
            }
        }
       


        private void CloseFormClickBtn(object sender, RoutedEventArgs e)
        {
            if (e.Source is Button)
            {
                this.Close();
            }
        }

        private void YesButtonClick(object sender, RoutedEventArgs e)
        {
            if (e.Source is Button)
            {
                onYes.Invoke(sender);
            }
                CloseFormClickBtn(sender, e);
            
        }
        private void NoButtonClick(object sender, RoutedEventArgs e)
        {
            if (e.Source is Button)
            {
                onNo.Invoke(sender);
            }
            CloseFormClickBtn(sender, e);

        }

        private void CloseFormClick(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
