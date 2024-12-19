using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackSpace.DBUtil;

namespace TrackSpace.Services.Shared
{
    public class BaseService
    {
        protected  TrackspaceContext _context = DBConnection.GetContext();


    }
}
