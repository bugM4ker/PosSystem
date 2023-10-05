﻿using AutoMapper;
using Entity.Models;
using Shared.DataTransferObjects;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace PosSystem
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            // Category -> CategoryDto
            CreateMap<Category, CategoryDto>();
            // Product -> ProductDto
            CreateMap<Product, ProductDto>();
            // Promotion -> PromotionDto
            CreateMap<Promotion, PromotionDto>();
            // User -> UserDto
            CreateMap<User, UserDto>();
            // CategoryUpdateCreateDto -> Category
            CreateMap<CategoryUpdateCreateDto, Category>();
            // ProductUpdateCreateDto -> Product
            CreateMap<ProductUpdateCreateDto, Product>().ReverseMap();
            // UserUpdateCreateDto -> User
            CreateMap<UserUpdateCreateDto, User>();
            // Supplier -> SupplierDto
            CreateMap<Supplier, SupllierDto>();
            
        }
    }
}
