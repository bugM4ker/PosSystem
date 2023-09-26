﻿using Entity.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contract
{
    public interface IProductRepository
    {
        IEnumerable<Product> GetAllProducts(Guid categoryId , bool trackChanges);
    }
}
