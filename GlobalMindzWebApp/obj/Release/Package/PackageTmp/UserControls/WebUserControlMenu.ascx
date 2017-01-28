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
                <span style="color: #007F3E;">Suvram </span><span style="color: #00B04C;">Solutions</span></a>
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
                <li><a runat="server" href="~/Services"><i class="fa fa-cogs" aria-hidden="true"></i>&nbsp;Services</a></li>
                <li><a runat="server" href="~/Career"><i class="fa fa-address-book" aria-hidden="true"></i>&nbsp;Career</a></li>
                <li><a runat="server" href="~/Contact"><i class="fa fa-envelope-o fa-fw"></i>&nbsp;Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a runat="server" href="~/Login"><i class="fa fa-sign-in"></i>&nbsp;Login</a></li>
                <li><a runat="server" href="~/Register"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;Register</a></li>
            </ul>
        </div>
    </div>
</div>
