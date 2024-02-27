﻿<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Flexify_App.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class=" w-full  gap-10 h-screen">
    <div class="flex grid grid-cols-1 md:grid-cols-12 h-full">
        <div class="col-span-8 h-full grid grid-cols-1 md:grid-cols-4 relative overflow-hidden">
            <div class="p-10 pb-0">
                <a href="/" class="text-xl font-bold ">Flexify</a>
            </div>
            <div class="w-full h-full absolute -z-10 grid grid-cols-12" id="grid-container"></div>
            <div class="md:pt-10 flex-col flex items-center col-span-2 md:mt-20 ">
                <div class="flex-col flex gap-4 ">
                    <h1 class="text-4xl font-bold text-center">Join Flexify</h1>
                    <p class="text-center text-slate-600">Sign up for free</p>
                </div>
               
                <div asp-action="Register" method="post" class="md:mt-10 w-full flex flex-col gap-7 p-2">
                    <div class="grid grid-cols-2 gap-4 ">
                        <div class="relative">
                            <span asp-validation-for="FirstName" class="text-red-600 absolute text-danger top-[-22px]"></span>
                             <div class="bg-zinc-200 p-4 rounded-lg text-black flex gap-3 ">
                          
                            <img src="Images/user.svg" />
                            
                            <input asp-for="FirstName" type="email"  placeholder="First Name" class="w-full bg-transparent  outline-none border-none" />
                        </div>
                        </div>
                       
                        <div class="relative">
                            <span asp-validation-for="FirstName" class="text-red-600 absolute text-danger top-[-22px]"></span>
                            <div class="bg-zinc-200 p-4 rounded-lg text-black flex gap-3 ">
                             
                                <img src="Images/user.svg" />
                                <input asp-for="LastName" type="email" placeholder="Last Name" class="w-full bg-transparent  outline-none border-none" />
                            </div>
                        </div>
                       

                    </div>
                    <div class="relative">
                        <span asp-validation-for="email" class="text-red-600 absolute text-danger top-[-22px]"></span>
                        <div class="bg-zinc-200 p-4 rounded-lg text-black  flex gap-3 ">
                           
                            <img src="Images/lock.svg" />
                            <input asp-for="email" type="email"  placeholder="Email Address" class="w-full bg-transparent  outline-none border-none" />
                        </div>

                    </div>
                    <div class=" relative gap-4">
                        <span asp-validation-for="password" class="text-red-600 absolute text-danger top-[-22px]"></span>
                        <div class="bg-zinc-200 p-4 rounded-lg text-black flex gap-3">
                            <img src="Images/user.svg" />
                            <input asp-for="password" type="password"  placeholder="Password" class="w-full bg-transparent  outline-none border-none" />
                        </div>
                       

                    </div>
                   
                    <div>
                        <a href="/" class="text-blue-500 font-semibold">Forgot Password?</a>

                    </div>
                    <div>

                        <div class="bg-gradient-to-r from-[#DB4C40] to-[#3C153B]  p-4 rounded-lg text-white font-bold">
                            <input type="submit" value="Create an account" class="cursor-pointer w-full bg-transparent  outline-none border-none" />
                        </div>

                    </div>
                </div>
                <div class="flex flex-col items-center">
                    <span>Or</span>
                    <a class="text-blue-600" href="/Auth/Register">Don't Have an Account ? </a>
                </div>
            </div>
        </div>
        <div class="bg-black hidden md:grid text-white col-span-4  bg-gray-900  grid-cols-3">

            <div class="h-full bg-[#DB4C40]"></div>
            
        
            <div class="h-full bg-[#3C153B]"></div>
            <div class="h-full bg-[#090C02]"></div>

        </div>
    </div>

</div>

</asp:Content>
