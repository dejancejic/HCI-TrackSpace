using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using TrackSpace.Command;
using TrackSpace.ViewModel;
using TrackSpace.ViewModel.Shared;

namespace TrackSpace.Services.Shared
{
   public class BaseViewModel
    {

        public ICommand CloseCommand { get; set; }

        public BaseViewModel() {

            CloseCommand = new RelayCommand(Close, CanShowWindow);

        }

        protected void Close(object obj)
        {
            ViewModelLocator.ObserverMainPage.Close();

        }
        protected bool CanShowWindow(object obj)
        {
            return true;
        }


    }
}
