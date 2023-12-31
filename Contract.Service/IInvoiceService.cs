﻿using Shared.DataTransferObjects.Invoice;
using Shared.RequestFeatures;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contract.Service
{
    public interface IInvoiceService
    {
        Task<(IEnumerable<InvoiceDto> invoices, MetaData metadata)> GetAllInvoiceAsync(InvoiceParameter invoiceParameter, bool trackChanges);

        Task<InvoiceDto> GetInvoiceAsync(Guid invoiceId, bool trackChanges);

        Task<InvoiceDto> CreateInvoiceAsync(InvoiceCreateUpdateDto invoiceCreate, bool trackChanges);

        Task UpdateInvoiceAsync(Guid invoiceId,InvoiceUpdateDto invoiceUpdate, bool trackChanges);

        Task DelteInvoiceAsync(Guid invoiceId, bool trackChanges);
    }
}
