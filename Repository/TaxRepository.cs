﻿using Contract;
using Entity.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class TaxRepository : RepositoryBase<Tax>, ITaxRepository
    {
        public TaxRepository(RepositoryContext repositoryContext) : base(repositoryContext)
        {
        }
    }
}
