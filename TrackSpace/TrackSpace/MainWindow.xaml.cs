using Microsoft.EntityFrameworkCore;
using MySql.Data.MySqlClient;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TrackSpace.DBUtil;
using TrackSpace.Models;

namespace TrackSpace
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private MyDbContext _context;
        public MainWindow()
        {
            InitializeComponent();
            var optionsBuilder = new DbContextOptionsBuilder<MyDbContext>(); 
            optionsBuilder.UseMySql("Server=localhost;Database=trackspace;User=root;Password=dejan;", new MySqlServerVersion(new Version(8, 0, 21)));
            _context = new MyDbContext(optionsBuilder.Options);
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            
            
        }
    }
}