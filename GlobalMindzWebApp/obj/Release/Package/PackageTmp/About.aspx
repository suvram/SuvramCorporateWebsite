<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="GlobalMindzWebApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        h4, h5 {
            color: #007F3E;
            font-weight: bold;
        }
    </style>
    <h2><%: Title %> Suvram Solutions:</h2>
    <p>
        Suvram Solutions is a Website and Software development company founded in 2015 in India and operates from Saheed Nagar, Bhubaneswar, Odisha. 
    </p>
    <p>
        We have our own inhouse 24/7 technical team of international work standards and handles many clients all over the Odisha. Ours product is one of the best in the market and we hope to be one of the top software providers in the region.
    </p>

    <h4>Why Choose Suvram Solutions?</h4>

    <h5>Good Support System. </h5>
    <p>We provide excellent customer care to our clients. Our support staff is always to be honest to our clients. We provide all sort of support options like Ticket system, Email and Phone. </p>


    <h5>Featurs Suit the Need.</h5>
    <ul>
        <li>Allows you to import the data from excel sheet</li>
        <li>Provides you a Website for your insititution</li>
        <li>Provides you an interface to 
                            <ul>
                                <li>Manage your establishment</li>
                                <li>Manage the students</li>
                                <li>Manage all the staffs </li>
                                <li>Send SMS to the stakeholders</li>
                            </ul>
        </li>
        <li>Allows you to manage the institution Library</li>
    </ul>

    <h5>Strong Software Architechture</h5>
    <ul>
        <li>- It has developed with Singleton Design Pattern with Multi Layered application.</li>
        <li>- All the master data like country, state, districts, designation etch. has been cached to avoid database interaction and faster performance.</li>
        <li>- Not a single SQL statement has been used inside the presentation layer, all handled with stored procedures</li>
        <li>- No inline css has been used, each page has its own separate css file.</li>
    </ul>


    <h5>Networks - Dedicated Servers</h5>
    <ul>
        <li>99% website uptime. The website remains up for almost all the times (24x7)</li>
        <li>All dedicated servers are backed by N+1 redundancy and a full mesh network environment.</li>
    </ul>


    <h2>Mission of Suvram Solutions:</h2>
    <ul>
        <li>To apply IT in education sector to provide a better communication facility among the Students & Teachers </li>
        <li>To provide awareness to the students (primary to high school) of the 'rural' populated belt</li>
        <li>To set an example by cultivating medicinal plants (Gloriasa Superba) using bio-technology</li>
        <li>To be one of the top software providers in the region </li>
    </ul>
    <p>
        Currently, it only focus on implementation of the "<b>iNTEGRATED CAMPUS AUTOMATION SYSTEM (iCAS)</b>" in all Educational Instututions (Schools, Colleges, etc.)
    </p>
    <p>
        It will surely suit the need of the organisation where Student, Teacher and Parents are the key stakeholders.
    </p>
    <p>
        In toto, Suvram Solutions is a Start-Up Software Development Company, who not only develops websites, web applications, software but also provides Value Added Services to bring in Excellence in your Activities related to your business.
    </p>
</asp:Content>
