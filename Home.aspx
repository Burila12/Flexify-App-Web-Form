﻿<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Flexify_App.home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="w-full gap-10 h-screen">
        <div class="flex grid grid-cols-1 md:grid-cols-12 h-full">
            <div class="col-span-8 h-full grid grid-cols-1 md:grid-cols-4 relative overflow-hidden">
                <div class="p-10 pb-0">
                    <a href="/" class="text-xl font-bold ">Flexify</a>
                </div>
                <div class="w-full h-full absolute -z-10 grid grid-cols-12" id="grid-container"></div>
                <div class="md:pt-10 flex-col flex items-center col-span-2 md:mt-20">
                    <div class="flex-col flex gap-4">
                        <h1 class="text-4xl font-bold text-center">Welcome <asp:Label ID="lblUsername" runat="server" CssClass="username"></asp:Label>!</h1>
                         <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="cursor-pointer bg-transparent outline-none border-none" OnClick="btnLogout_Click" />
                    </div>
                </div>
            </div>
            <div class="bg-black hidden md:grid text-white col-span-4 bg-gray-900 grid-cols-3">
                <div class="h-full bg-[#DB4C40]"></div>
                <div class="h-full bg-[#090C02]"></div>
                <div class="h-full bg-[#3C153B]"></div>
            </div>
        </div>
    </div>
</asp:Content>
