﻿using Contract;
using Contract.Service;
using Serilog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service
{
    internal sealed class SupplierService : ISupplierService
    {
        private readonly IRepositoryManager _repository;
        private readonly ILogger _logger;

        public SupplierService(IRepositoryManager repository, ILogger logger)
        {
            _repository = repository;
            _logger = logger;
        }
    }
}