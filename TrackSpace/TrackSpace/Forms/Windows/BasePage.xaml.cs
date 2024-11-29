using System.Windows;
using System.Windows.Controls;

namespace TrackSpace.Forms.Windows
{
    public partial class BasePage : UserControl
    {
        public static readonly DependencyProperty SideMenuContentProperty =
            DependencyProperty.Register("SideMenuContent", typeof(object), typeof(BasePage), new PropertyMetadata(null));

        public static readonly DependencyProperty MainContentProperty =
            DependencyProperty.Register("MainContent", typeof(object), typeof(BasePage), new PropertyMetadata(null));

        public object SideMenuContent
        {
            get { return GetValue(SideMenuContentProperty); }
            set { SetValue(SideMenuContentProperty, value); }
        }

        public object MainContent
        {
            get { return GetValue(MainContentProperty); }
            set { SetValue(MainContentProperty, value); }
        }

      

        public BasePage()
        {
            InitializeComponent();
        }

        private void CloseBtnClick(object sender, RoutedEventArgs e)
        {
            Window parentWindow = Window.GetWindow(this);
            if (parentWindow != null) { parentWindow.Close(); }
        }
    }
}
