﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GlobalMindzDataAccess
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class GlobalMindzEntities : DbContext
    {
        public GlobalMindzEntities()
            : base("name=GlobalMindzEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ADMN_MST_Countries> ADMN_MST_Countries { get; set; }
        public virtual DbSet<ADMN_MST_Districts> ADMN_MST_Districts { get; set; }
        public virtual DbSet<ADMN_MST_States> ADMN_MST_States { get; set; }
        public virtual DbSet<ADMN_MST_Users> ADMN_MST_Users { get; set; }
        public virtual DbSet<ADMN_MST_Companies> ADMN_MST_Companies { get; set; }
        public virtual DbSet<ADMN_MST_Users_Officewise> ADMN_MST_Users_Officewise { get; set; }
        public virtual DbSet<ADMN_MST_UserSettingKeys> ADMN_MST_UserSettingKeys { get; set; }
        public virtual DbSet<ADMN_MST_UserSettings> ADMN_MST_UserSettings { get; set; }
    
        public virtual ObjectResult<pADM_Users_SelectAllByCompanyID_Result> pADM_Users_SelectAllByCompanyID(string companyID)
        {
            var companyIDParameter = companyID != null ?
                new ObjectParameter("CompanyID", companyID) :
                new ObjectParameter("CompanyID", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<pADM_Users_SelectAllByCompanyID_Result>("pADM_Users_SelectAllByCompanyID", companyIDParameter);
        }
    
        public virtual ObjectResult<pADM_Users_SelectByLoginCredentials_Result> pADM_Users_SelectByLoginCredentials(string userName, string password)
        {
            var userNameParameter = userName != null ?
                new ObjectParameter("UserName", userName) :
                new ObjectParameter("UserName", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("Password", password) :
                new ObjectParameter("Password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<pADM_Users_SelectByLoginCredentials_Result>("pADM_Users_SelectByLoginCredentials", userNameParameter, passwordParameter);
        }
    
        public virtual ObjectResult<pADM_Users_SelectByLoginName_Result> pADM_Users_SelectByLoginName(string loginName)
        {
            var loginNameParameter = loginName != null ?
                new ObjectParameter("LoginName", loginName) :
                new ObjectParameter("LoginName", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<pADM_Users_SelectByLoginName_Result>("pADM_Users_SelectByLoginName", loginNameParameter);
        }
    
        public virtual ObjectResult<pADM_Users_SelectByUserID_Result> pADM_Users_SelectByUserID(Nullable<int> userID)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("UserID", userID) :
                new ObjectParameter("UserID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<pADM_Users_SelectByUserID_Result>("pADM_Users_SelectByUserID", userIDParameter);
        }
    
        public virtual ObjectResult<pADM_Users_SelectByUserReferenceID_Result> pADM_Users_SelectByUserReferenceID(Nullable<int> userReferenceID)
        {
            var userReferenceIDParameter = userReferenceID.HasValue ?
                new ObjectParameter("UserReferenceID", userReferenceID) :
                new ObjectParameter("UserReferenceID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<pADM_Users_SelectByUserReferenceID_Result>("pADM_Users_SelectByUserReferenceID", userReferenceIDParameter);
        }
    
        public virtual ObjectResult<pADM_Users_SelectDetailsAll_Result> pADM_Users_SelectDetailsAll()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<pADM_Users_SelectDetailsAll_Result>("pADM_Users_SelectDetailsAll");
        }
    
        public virtual ObjectResult<pADM_Users_SelectDetailsByLoginName_Result> pADM_Users_SelectDetailsByLoginName(string loginName)
        {
            var loginNameParameter = loginName != null ?
                new ObjectParameter("LoginName", loginName) :
                new ObjectParameter("LoginName", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<pADM_Users_SelectDetailsByLoginName_Result>("pADM_Users_SelectDetailsByLoginName", loginNameParameter);
        }
    
        public virtual ObjectResult<pADM_Users_SelectOfficeDetails_Result> pADM_Users_SelectOfficeDetails(Nullable<int> officeId)
        {
            var officeIdParameter = officeId.HasValue ?
                new ObjectParameter("OfficeId", officeId) :
                new ObjectParameter("OfficeId", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<pADM_Users_SelectOfficeDetails_Result>("pADM_Users_SelectOfficeDetails", officeIdParameter);
        }
    
        public virtual int pADM_Users_Update(Nullable<int> userID, string newPassword, Nullable<int> modifiedBy, ObjectParameter returnValue)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("UserID", userID) :
                new ObjectParameter("UserID", typeof(int));
    
            var newPasswordParameter = newPassword != null ?
                new ObjectParameter("NewPassword", newPassword) :
                new ObjectParameter("NewPassword", typeof(string));
    
            var modifiedByParameter = modifiedBy.HasValue ?
                new ObjectParameter("ModifiedBy", modifiedBy) :
                new ObjectParameter("ModifiedBy", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pADM_Users_Update", userIDParameter, newPasswordParameter, modifiedByParameter, returnValue);
        }
    
        public virtual int pADM_Users_UpdateRole(Nullable<int> userID, Nullable<int> roleID, Nullable<int> modifiedBy, ObjectParameter returnValue)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("UserID", userID) :
                new ObjectParameter("UserID", typeof(int));
    
            var roleIDParameter = roleID.HasValue ?
                new ObjectParameter("RoleID", roleID) :
                new ObjectParameter("RoleID", typeof(int));
    
            var modifiedByParameter = modifiedBy.HasValue ?
                new ObjectParameter("ModifiedBy", modifiedBy) :
                new ObjectParameter("ModifiedBy", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pADM_Users_UpdateRole", userIDParameter, roleIDParameter, modifiedByParameter, returnValue);
        }
    }
}