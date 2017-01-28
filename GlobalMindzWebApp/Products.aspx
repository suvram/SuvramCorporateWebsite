<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="GlobalMindzWebApp.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="pageTitle">Products:</h4>

    <style type="text/css">
        .SuvramProducts {
            display: block;
            float: left;
            width: 100%;
            min-height: 100px;
            list-style-type: none;
            margin: 10px 0px 10px 0px;
            padding: 0;
            border-bottom: solid 1px #FFF200;
            background-color: #FFFFF8;
        }

        .formLabel {
            display: block;
            float: left;
            width: 99%;
            text-align: left;
        }

        .formValue {
            display: block;
            float: left;
            width: 99%;
        }

        .pageTitle {
            border-bottom: solid 1px #ccc;
        }
    </style>
    <ul class="SuvramProducts">
        <li class="formLabel pageTitle" style="width: 100%; background: whitesmoke;"><strong>#1: integrated Campus Automation System (iCAS)</strong></li>
        <li>This is a bundle of software, that helps to manage almost all the day to day activities of a campus of any educational institution, where principal, staffs, students and parents are the key stakeholders.</li>

        <li class="formLabel"><strong>Tools & Technology Used: C#.Net4.5, SQL Server, EF, WebAPI, Singleton Design Pattern</li>


        <li class="formLabel"><b>Features of the Software:</b></li>
        <li class="formValue">
            <ul>
                <li>Allows you to import the data from excel sheet</li>
                <li>Provides you a Website for your insititution</li>
                <li>Provides you an interface to 
                            <ul>
                                <li>Manage your establishment (Notice, Tenders, Circulars, Recent News, etc.)</li>
                                <li>Manage the Feedback System (Principal can create questions to ask to students as feedback) </li>
                                <li>Manage the students (Registration, Admission, etc. etc. to College Leaving)</li>
                                <li>Manage all the staffs (Leave, Attendance, Payroll, Exam Mark Feeding, etc. etc.) </li>
                                <li>Send SMS to the stakeholders (Can send message to all or selected staffs or/and students) </li>
                            </ul>
                </li>
                <li>Allows you to manage the institution Library</li>
            </ul>
        </li>


        <li class="formLabel"><strong>Clients/Customers: &nbsp; <a href="http://www.tsdcollege.in" target="_blank">TSD College, BD Pur (Ganjam), 761120</a></strong></li>

        <li class="formLabel"><strong>Pricing:  &nbsp; <a href="mailto:suvram.solutions@gmail.com"> Send Email for Quotation</strong></a></li>

    </ul>

    <ul class="SuvramProducts">
        <li class="formLabel pageTitle" style="width: 100%; background: whitesmoke;"><strong>#2: Suvram - ERP (<a href="https://en.wikipedia.org/wiki/Enterprise_resource_planning" target="_blank"> Enterprise Resource Planning</a>)</strong></li>
        <li class="formLabel"><strong>Tools & Technology Used: C#.Net4.5, SQL Server, LINQ, Web Services, DevExpress & TFS</strong></li>
        <li>It has four basic modules such as Administration, CRM (Customer Relations Management), HRMS (Humar Resource Management System) and Financial Accounting</li>
    </ul>

    <ul class="SuvramProducts">
        <li class="formLabel pageTitle" style="width: 100%; background: whitesmoke;"><strong>#3: Email Extraction System</strong></li>
        <li>This software is being used to extract the valid email address from a given list of websites.</li>
        <li class="formLabel"><strong>Tools & Technology Used: C#.Net4.5, SQL Server</strong></li>


        <li class="formLabel"><b>Features of the Software:</b></li>
        <li class="formValue">
            <ul>
                <li>Allows you to extract the email address from the given website address</li>
            </ul>
        </li>


        <li class="formLabel"><strong>Clients/Customers: &nbsp; <a href='https://www.auroin.com/' target="_blank">AuroIN, Bhubaneswar</a></strong></li>

        <li class="formLabel"><strong>Pricing:  <a href="mailto:suvram.solutions@gmail.com">Send Mail / Enquiry</></a></li>

    </ul>
</asp:Content>
