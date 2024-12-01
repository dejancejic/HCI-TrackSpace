using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace TrackSpace.Utils
{
    using System;
    using System.Globalization;
    using System.Collections.Generic;
    using System.Windows.Data;
    using System.Windows;

    public class GenderTranslationConverter : IValueConverter
    {
        
       

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string gender)
            {
                return Application.Current.Resources[gender] ?? value;
            }
            return value;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException("Two-way binding is not supported.");
        }
    }


}
