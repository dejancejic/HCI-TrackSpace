using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;

namespace TrackSpace.Utils
{
    public class DateTimeConverter:IValueConverter
    {

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture) {
            if (value is DateTime dateTime) { 
                string? format = parameter as string;
                if (format == "DateOnly") { 
                    return dateTime.ToString("dd.MM.yyyy."); 
                }
                else if (format == "TimeOnly")
                {
                    return dateTime.ToString("HH:mm");
                }
                else { 
                    return dateTime.ToString("dd.MM.yyyy HH:mm"); 
                }
            }
            return value;
        }
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture) { throw new NotImplementedException(); }
    }
}
