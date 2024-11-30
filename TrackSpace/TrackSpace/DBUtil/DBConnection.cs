using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TrackSpace.DBUtil
{
    public class DBConnection
    {


        public static TrackspaceContext GetContext()
        {
            var optionsBuilder = new DbContextOptionsBuilder<TrackspaceContext>();
            optionsBuilder.UseMySql(TrackspaceContext.ConnectionString,
                new MySqlServerVersion(new Version(8, 0, 36)));
            return new TrackspaceContext(optionsBuilder.Options);
        }
    }
}
