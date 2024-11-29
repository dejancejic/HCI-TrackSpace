using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace TrackSpace.Command
{
    public class RelayCommand : ICommand
    {
        public event EventHandler? CanExecuteChanged;


        public Action<object> _Execute { get; set; }
        public Predicate<object> _CanExecute { get; set; }

        public RelayCommand(Action<object> ExecuteMethod,Predicate<object> CanExecuteMethod) {
        
            this._Execute= ExecuteMethod;
            this._CanExecute= CanExecuteMethod;
        }



        public bool CanExecute(object? parameter)
        {
           return _CanExecute(parameter);
        }

        public void Execute(object? parameter)
        {
            _Execute(parameter);
        }
    }
}
