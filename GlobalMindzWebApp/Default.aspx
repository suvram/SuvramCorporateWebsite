<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GlobalMindzWebApp._Default" %>

<%@ Register Src="UserControls/WebUserControlSlider.ascx" TagName="WebUserControlSlider" TagPrefix="ucGlobal" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
    </div>--%>
    <ucGlobal:WebUserControlSlider ID="WebUserControlSlider1" runat="server" />
    <div class="row">
        <div class="col-md-4">
            <h2>About</h2>
            <p>Suvram Solutions is a professionally-managed Website and Software development company founded in 2015 in India and operates from Saheed Nagar, Bhubaneswar, Odisha. </p>
            <p>It not only hopes to solve almost all IT related issues or problems through programming in Microsoft Technologies (C#, SQL Server, etc) but also it must also try to apply latest technology in the field of agriculture, plantation and soil conservation.</p>
            <p>Suvram is quite aware of its corporate social responsibility, so it has also been enaged in Plantation to over come 'Global Warming', Social Service, etc...</p>
            <p>
                <a class="btn btn-default btn-xs" href="~/About" runat="server">Learn more &raquo;</a>
            </p>
        </div>

        <div class="col-md-4">
            <h2>Mission</h2>
            <ul class="DefaultPageULMission">
                <li>To apply the Information Technology (IT) across the education sector (Schools, Colleges & Training Institutions)</li>
                <li>To provide a best communication facility among the Students, Teachers and Parents</li>
                <li>To provide awareness to the students (primary to high school) of the 'rural' populated belt
                </li>
                <li>To set an example by cultivating medicinal plants (Gloriasa Superba) using bio-technology
                </li>
                <li>To be one of the top software providers in the region 
                </li>
            </ul>
             
            <p>
                <a class="btn btn-default btn-xs" href="~/About#Mission" runat="server">Learn more &raquo;</a>
            </p>
        </div>

        <div class="col-md-4">
            <h2>Product</h2>

            <ul class="DefaultPageUL">
                <li><b><u>integrated Campus Automation System (iCAS)</u></b></li>
                <li>This is a bundle of software, that helps to manage almost all the day to day activities of a campus of any educational institution, where principal, staffs, students and parents are the key stakeholders.</li>
                <li><b>Features:</b></li>
                <li>
                    <ul>
                        <li>Allows you to import the students data from <a href='http://dheodisha.gov.in/sams/index.aspx' target="_blank">DHE (Department of Higher Education) website</a>.</li>
                        <%--<li>Provides you a Website for your insititution's global presence</li>--%>
                        <li>Provides you an website or interface to: 
                            <ul>
                                <li>Manage the establishment records (Notice, Tenders, Circulars, Recent News, etc. etc.)</li>
                                <li>Manage all the files like students, staffs, etc. </li>
                                 <li>Manage the Library of the institution </li>
                                <li>Send Short Message (SMS) to any or all</li>
                            </ul>
                        </li>                      
                    </ul>
                </li>
            </ul>


            <p>
                <a class="btn btn-default btn-xs" href="~/Products" runat="server">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
