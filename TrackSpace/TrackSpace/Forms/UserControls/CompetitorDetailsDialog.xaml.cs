using System;
using System.Collections;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.UserControls
{
    /// <summary>
    /// Interaction logic for CompetitorDetailsDialog.xaml
    /// </summary>
    public partial class CompetitorDetailsDialog : UserControl
    {
        public static readonly DependencyProperty MainContentProperty =
            DependencyProperty.Register("MainContentControl", typeof(IEnumerable), typeof(CompetitionDataGridControl));

        public IEnumerable MainContent
        {
            get => (IEnumerable)GetValue(MainContentProperty);
            set => SetValue(MainContentProperty, value);
        }


        public CompetitorDetailsDialog()
        {
            InitializeComponent();
            DataContext=ViewModelLocator.ClubInfoViewModel;
        }
    }
}
