﻿using System;
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
using TrackSpace.Command;
using TrackSpace.Models;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Forms.Pages
{

    public partial class EventInfoPage : UserControl
    {

        public EventInfoPage(Event event1)
        {
            InitializeComponent();

            DataContext = ViewModelLocator.EventInfoViewModel;
            ViewModelLocator.EventInfoViewModel.SelectedEvent = event1;
            ViewModelLocator.EventInfoPage = this;
            if(event1.RunningEvent != null)
            {
                GroupsStackPanel.Visibility = Visibility.Visible;
            }
        }

       

        private void Hyperlink_Click(object sender, RoutedEventArgs e)
        {
            Hyperlink hyperlink = sender as Hyperlink;
            if (hyperlink != null)
            {
                ViewModelLocator.EventInfoViewModel.ShowGroupsPage.Execute(new object());
            }

        }


        private void DataGridCell_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {

            var cell = sender as DataGridCell;
     
            if (cell != null && cell.DataContext is CompetitorEvent selectedCompetitorEvent)
            {
         
                var selectedCompetitor = selectedCompetitorEvent.IdCompetitorNavigation;

                if (selectedCompetitor != null)
                {

                    ViewModelLocator.EventInfoViewModel.SelectedCompetitor = selectedCompetitor;

                    UserDetailsDialogHost.IsOpen = true;
                }
            }
        }
    }
}