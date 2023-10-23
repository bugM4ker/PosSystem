﻿using Contract;
using Entity.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class PromotionRepository : RepositoryBase<Promotion>, IPromotionRepository
    {
        public PromotionRepository(RepositoryContext repositoryContext) : base(repositoryContext)
        {
        }

        public void CreatePromotion(Promotion promotion)
        {
            Create(promotion);
        }

        public void DeletePromotion(Promotion promotion)
        {
            Delete(promotion);
        }

        public async Task<IEnumerable<Promotion>> GetAllPromotionsAsync(bool trackChanges)
        {
            return await FindAll(trackChanges).OrderBy(c => c.PromotionName).ToListAsync();
        }

        public async Task<Promotion> GetPromotionAsync(Guid? promotionId, bool trackChanges)
        {
            return await FindByConditon(e => e.PromotionId.Equals(promotionId), trackChanges).SingleOrDefaultAsync();
        }
    }
}
