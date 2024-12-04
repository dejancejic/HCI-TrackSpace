using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackSpace.DBUtil;
using TrackSpace.Models;
using TrackSpace.Services.Shared;

namespace TrackSpace.Services
{
    public class CategoryService:BaseService
    {
        
        private ObservableCollection<Category> _categories;

        public CategoryService()
        {
            _categories = new ObservableCollection<Category>(_context.Categories.ToList());

        }

        public Category GetCategoryById(int idCategory)
        {
            return _categories.FirstOrDefault(c => c.IdCategory == idCategory);
        }



    }
}
