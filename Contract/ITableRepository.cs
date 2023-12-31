﻿using Entity.Models;
using Shared.RequestFeatures;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contract
{
    public interface ITableRepository
    {
        Task<PagedList<Table>> GetAllTablesAsync(TableParameters tableParameters, bool trackChanges);

        Task<Table> GetTableAsync(Guid tableId, bool trackChanges);

        void CreateTable(Table table);

        void DelteTable(Table table);
    }
}
