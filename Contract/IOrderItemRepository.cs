﻿using Entity.Models;
using Shared.RequestFeatures;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Contract
{
    public interface IOrderItemRepository
    {
        Task<PagedList<OrderItem>> GetAllOrderItemAsync(Guid orderId ,OrderItemsParameters orderItemsParameters, bool trackChanges);

        Task<IEnumerable<OrderItem>> GetOrderItemsForInvoiceAsync(Guid orderId, bool trackChanges);

        Task<OrderItem> GetOrderItemAsync(Guid orderId, Guid orderItemsId, bool trackChanges);

        void CreateOrderItems(Guid orderId ,OrderItem orderItem);

        void DeleteOrderItems(OrderItem orderItem);
    }
}
