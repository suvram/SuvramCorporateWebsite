<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlMenu.ascx.cs" Inherits="GlobalMindzWebApp.UserControls.WebUserControlMenu" %>
<style>
    .suvram-logo {
        display: block;
        float: left;
        margin-top: -12px;
        margin-right: 10px;
        padding-top: -10px;
        /*background-image: url(Images/suvram-logo.png);*/
    }

    .navbar-inverse .navbar-toggle .icon-bar {
        background-color: #FFF200;
    }

    #company_name {
        display: block;
        margin-top: 10px;
        float: left;
        margin-top: 22px;
        margin-left: -84px;
        padding: 0px 2px;
    }

    .suvram-name {
        background-color: #FFF;
        border-bottom: solid 1px #007F3E;
        color: #00B04C;
        font-family: Stencil,'Arial Rounded MT';
        font-size: 13pt;
        font-weight: 400;
        line-height: 5px;
        margin-right: 8px;
        padding: 0px 4px;
        text-transform: capitalize;
    }

    .solutions-name {
        background-color: #FFF;
        color: #007F3E;
        font-size: 13pt;
        font-weight: 400;
    }

    .suvram-services {
        background-color: #FFF;
        color: #007F3E;
        font-family: monospace,Courier New, Courier;
        font-weight: bold;
        font-size: 8pt;
        display: block;
        float: right;
        margin-left: 4px;
        margin-top: -3px;
    }

    .orange-dot {
        background-color: #FFF;
        color: #FF8800;
        font-family: monospace,Courier New, Courier;
        font-weight: bold;
        font-size: 17pt;
        padding-left: 4px;
    }
</style>
<div class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" runat="server" href="~/">
                <img src="Images/suvram-logo.png" class="suvram-logo" />
                <div id="company_name">
                    <span class="suvram-name">SUVRAM</span><span class='solutions-name'>Solutions</span>
                    <div class="suvram-services">
                        <span><span class='orange-dot'>.</span>Web <span class='orange-dot'>.</span>Software <span class='orange-dot'>.</span>Education<span class='orange-dot'>.</span>Bio-Techonolgy</span>
                    </div>
                </div>

            </a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a runat="server" href="~/"><i class="fa fa-home"></i>&nbsp;Home</a></li>
                <li><a runat="server" href="~/About" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>&nbsp; About<b class='caret'></b></a>
                    <ul class="dropdown-menu">
                        <li><a runat="server" href="~/About#VisionMission">Mission</a></li>
                        <li><a runat="server" href="~/About#WhatWeSayBelieve">Vision</a></li>
                        <li><a runat="server" href="~/About#History">History</a></li>
                        <li><a runat="server" href="~/About#Team">Team</a></li>
                    </ul>

                </li>
                <li><a runat="server" href="~/Products"><i class="fa fa-th-list" aria-hidden="true"></i>&nbsp;Products</a></li>
                <%--    <li><a runat="server" href="~/Services"><i class="fa fa-cogs" aria-hidden="true"></i>&nbsp;Services</a></li>
                <li><a runat="server" href="~/Career"><i class="fa fa-address-book" aria-hidden="true"></i>&nbsp;Career</a></li>--%>
                <li><a runat="server" href="~/Contact"><i class="fa fa-envelope-o fa-fw"></i>&nbsp;Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a runat="server" href="~/Login"><i class="fa fa-sign-in"></i>&nbsp;Login</a></li>
                <li><a runat="server" href="~/Register"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;Register</a></li>
            </ul>
        </div>
    </div>
</div>
