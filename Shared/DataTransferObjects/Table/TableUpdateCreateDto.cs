﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shared.DataTransferObjects.Table
{
    public record TableUpdateCreateDto(string Name, string TableDescription, bool IsActive);
}
