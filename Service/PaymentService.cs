﻿using AutoMapper;
using Contract;
using Contract.Service;
using Contract.Service.UserProvider;
using Entity.Exceptions;
using Entity.Models;
using Serilog;
using Shared.DataTransferObjects.Payment;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service
{
    internal sealed class PaymentService : IPaymentService
    {
        private readonly IRepositoryManager _repository;
        private readonly ILogger _logger;
        private readonly IMapper _mapper;
        private readonly IUserProvider _userProvider;

        public PaymentService(IRepositoryManager repository, ILogger logger, AutoMapper.IMapper mapper, IUserProvider userProvider)
        {
            _repository = repository;
            _logger = logger;
            _mapper = mapper;
            _userProvider = userProvider;
        }

        // Create Payment
        public async Task<PaymentDto> CreatePaymentAsync(PaymentUpdateCreateDto paymentCreate)
        {
            var userId = await _userProvider.GetUserIdAsync();
            var paymentEntity = _mapper.Map<Payment>(paymentCreate);
            paymentEntity.CreateAuditFields(userId);
            _repository.PaymentRepository.CreatePayment(paymentEntity);
            await _repository.SaveAsync();

            var paymentDto = _mapper.Map<PaymentDto>(paymentEntity);
            return paymentDto;
        }

        public async Task DeletePaymentAsync(Guid paymentId, bool trackChanges)
        {
            var payment = await _repository.PaymentRepository.GetPaymentAsync(paymentId, trackChanges);
            if (payment is null) throw new PaymentNotFoundException(paymentId);
            _repository.PaymentRepository.DeletePayment(payment);
            await _repository.SaveAsync();
        }

        // GetAllPayment
        public async Task<IEnumerable<PaymentDto>> GetAllPaymentAsync(bool trackChanges)
        {
            var payment = await _repository.PaymentRepository.GetAllPaymentsAsync(trackChanges);
            var paymentDto = _mapper.Map<IEnumerable<PaymentDto>>(payment);
            return paymentDto;
        }

        // Get Payment By Id
        public async Task<PaymentDto> GetPaymentAsync(Guid paymentId, bool trackChanges)
        {
            var payment = await _repository.PaymentRepository.GetPaymentAsync(paymentId, trackChanges);
            if(payment is null)
            {
                throw new PaymentNotFoundException(paymentId);
            }
            var paymentDto = _mapper.Map<PaymentDto>(payment);
            return paymentDto;
        }

        public async Task UpdatePaymentAsync(Guid paymentId,PaymentUpdateCreateDto paymentUpdate, bool trackChanges)
        {
            var userId = await _userProvider.GetUserIdAsync();
            var paymentEntity = await _repository.PaymentRepository.GetPaymentAsync(paymentId, trackChanges);
            if (paymentEntity is null) throw new PaymentNotFoundException(paymentId);
            paymentEntity.UpdateAuditFields(userId);
            _mapper.Map(paymentUpdate, paymentEntity);
            await _repository.SaveAsync();
        }
    }
}
