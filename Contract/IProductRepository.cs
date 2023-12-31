﻿using Entity.Models;
using Shared.RequestFeatures;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contract
{
    public interface IProductRepository
    {
        Task<PagedList<Product>> GetAllProductsAsync(Guid categoryId, ProductParameters productParameters , bool trackChanges);
        Task<Product> GetProductAsync( Guid categoryId ,Guid productId, bool trackChanges);

        Task<Product> GetProductForInvoiceAsync(Guid productId, bool trackChanges);

        void CreateProduct(Guid categoryId, Product product);

        void DeleteProduct(Product product);
    }
}
