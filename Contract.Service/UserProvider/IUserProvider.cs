﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contract.Service.UserProvider
{
    public interface IUserProvider
    {
        Task<string> GetUserIdAsync();
    }
}
