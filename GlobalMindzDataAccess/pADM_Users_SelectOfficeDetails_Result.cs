//------------------------------------------------------------------------------
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
    
    public partial class pADM_Users_SelectOfficeDetails_Result
    {
        public int Sr { get; set; }
        public Nullable<int> OfficeID { get; set; }
        public string OfficeName { get; set; }
        public string OfficeCode { get; set; }
        public Nullable<int> OfficeTypeID { get; set; }
        public string OfficeTypeDescription { get; set; }
        public string OfficeTypeAbbreviation { get; set; }
        public Nullable<System.DateTime> EstablishmentDate { get; set; }
        public Nullable<int> ParentOfficeID { get; set; }
        public string ParentOfficeName { get; set; }
        public string ParentOfficeCode { get; set; }
        public Nullable<int> ManagerEmployeeID { get; set; }
        public string ManagerEmployeeName { get; set; }
        public string Address_TownOrCity { get; set; }
        public string Address_Landmark { get; set; }
        public string Address_PinCode { get; set; }
        public Nullable<int> Address_DistrictID { get; set; }
        public string Address_DistrictName { get; set; }
        public string Address_StateName { get; set; }
        public string Address_CountryName { get; set; }
        public string ContactPerson1 { get; set; }
        public string ContactPerson2 { get; set; }
        public string ContactPerson3 { get; set; }
        public string StdCodePhone { get; set; }
        public string Phone1 { get; set; }
        public string Phone2 { get; set; }
        public string Phone3 { get; set; }
        public string Extension1 { get; set; }
        public string Extension2 { get; set; }
        public string Extension3 { get; set; }
        public string StdCodeFax { get; set; }
        public string Fax1 { get; set; }
        public string Fax2 { get; set; }
        public string Fax3 { get; set; }
        public string Mobile1 { get; set; }
        public string Mobile2 { get; set; }
        public string Mobile3 { get; set; }
        public string Email1 { get; set; }
        public string EMail2 { get; set; }
        public string EMail3 { get; set; }
        public Nullable<int> CompanyID { get; set; }
        public string CompanyName { get; set; }
        public string CompanyCode { get; set; }
        public Nullable<bool> IsHavingShift { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
    }
}