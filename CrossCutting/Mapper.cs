using System;
using System.Collections.Generic;
using System.Text;
using Tura.App.Contracts.Models;
using Tura.DataAccess.Contracts.Entities;

namespace CrossCutting
{
    public static class Mapper
    {
        public static IdentityEntity Model2EntityMapper(IdentityModel model)
        {
            var mapper = new Tura.DataAccess.Contracts.Entities.IdentityEntity()
            {
                //Created date should not be updated
                //Created = model.Created,
                Email = model.Email,
                IsActive = model.IsActive,
                //Modified date should not be updated
                //Modified = model.Modified,
                Name = model.Name,
                Surname = model.Surname,
                UserName = model.UserName
            };
            return mapper;
        }
        public static IdentityModel Entity2ModelMapper(IdentityEntity model)
        {
            var mapper = new IdentityModel()
            {
                Created = System.DateTime.Today,
                Email = model.Email,
                IsActive = model.IsActive,
                Modified = System.DateTime.Today,
                Name = model.Name,
                Surname = model.Surname,
                UserName = model.UserName

            };
            return mapper;
        }
        public static UserEntity Model2EntityMapper(UserModel model)
        {
            UserEntity mapper = new Tura.DataAccess.Contracts.Entities.UserEntity()
            {
                ConnectorID = model.ConnectorID,
                InternalID = model.InternalID,
                Username = model.Username,
                IsActive = model.IsActive,
                Name = model.Name,
                Surname = model.Surname,
                IdentityID = model.IdentityID
            };
            
            return mapper;
        }
        public static UserModel Entity2ModelMapper(UserEntity model)
        {
            var mapper = new UserModel()
            {
                Username = model.Username,
                IsActive = model.IsActive,
                InternalID = model.InternalID,
                ConnectorID = model.ConnectorID,
                IdentityID = model.IdentityID,
                Name = model.Name,
                Surname = model.Surname
            };
            return mapper;
        }
        public static ConnectorEntity Model2EntityMapper(ConnectorModel model)
        {
            var mapper = new Tura.DataAccess.Contracts.Entities.ConnectorEntity()
            {
                AppRefName = model.AppRefName,
                DBName = model.DBName,
                IP = model.IP,
                OtherInfo = model.OtherInfo,
                Passwd = model.Passwd,
                Port = model.Port,
                Uname = model.Uname,
                Name = model.Name
            };
            return mapper;
        }
        public static ConnectorModel Entity2ModelMapper(ConnectorEntity model)
        {
            var mapper = new ConnectorModel()
            {
                Id = model.Id,
                Uname = model.Uname,
                AppRefName = model.AppRefName,
                DBName = model.DBName,
                IP = model.IP,
                OtherInfo = model.OtherInfo,
                //Password shouldn't get to the user
                Passwd = "Empty",
                Port = model.Port
            };
            return mapper;
        }
        public static CorrelationRuleEntity Model2EntityMapper(CorrelationRuleModel model)
        {
            CorrelationRuleEntity mapper = new Tura.DataAccess.Contracts.Entities.CorrelationRuleEntity()
            {
                name = model.name,
                rule = model.rule
            };
            return mapper;
        }
        public static CorrelationRuleModel Entity2ModelMapper(CorrelationRuleEntity model)
        {
            var mapper = new CorrelationRuleModel()
            {
                name = model.name,
                rule = model.rule
            };
            return mapper;
        }
    }
}
