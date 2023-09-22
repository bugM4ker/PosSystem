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
    internal sealed class UserAuthenticationService : IUserAuthenticationService
    {
        private readonly IRepositoryManager _repository;
        private readonly ILogger _logger;

        public UserAuthenticationService(IRepositoryManager repository, ILogger logger)
        {
            _repository = repository;
            _logger = logger;
        }
    }
}
