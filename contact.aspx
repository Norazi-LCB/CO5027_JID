﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" runat="server">Contact: My new website
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderh1" runat="server">Contact Page
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderh2" runat="server">Contact Us
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderBodyContent" runat="server">
    <p>

We are at:
</p>
<p>
1 The street <br />
Townsville</br />
Cheshire</br>
CH1 1AA
</p>

<asp:panel runat="server" ID="pnlCompose">
        <asp:validationsummary runat="server" CssClass="errorMessages">
        </asp:validationsummary>
        <div>
            <asp:label id="lblEmail" runat="server" text="Email Address" associatedcontrolid="txtEmail">
            </asp:label>
            <asp:textbox id="txtEmail" runat="server">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="Please enter your email address" 
                ControlToValidate="txtEmail" CssClass="error">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                ErrorMessage="Please check you entered your email address correctly" 
                ControlToValidate="txtEmail" CssClass="error" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:label id="lblConfirmEmail" runat="server" text="Confirm Email" associatedcontrolid="txtConfirmEmail">
            </asp:label>
            <asp:textbox id="txtConfirmEmail" runat="server">
            </asp:textbox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Please check your confirmed email address" 
                ControlToCompare="txtConfirmEmail" ControlToValidate="txtEmail" CssClass="error">*</asp:CompareValidator>
        </div>
        <div>
            <asp:label id="lblSubject" runat="server" text="Subject" associatedcontrolid="txtSubject">
            </asp:label>
            <asp:textbox id="txtSubject" runat="server">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" 
                ErrorMessage="Please type a subject for the message" 
                ControlToValidate="txtSubject" CssClass="error">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:label id="lblBody" runat="server" text="Your Message" associatedcontrolid="txtBody">
            </asp:label>
            <asp:textbox id="txtBody" runat="server" textmode="MultiLine">
            </asp:textbox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" 
                ErrorMessage="Please type your message" ControlToValidate="txtBody" CssClass="error">*</asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:button id="btnContact" runat="server" text="Send" OnClick="btnContact_Click" />
        </div>
    </asp:panel>


    <asp:Panel ID="pnlSent" runat="server" visible="false">
    <p>Your message has been sent</p>
    </asp:Panel>

        <p>
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </p>

    <div id='myMap' style='width: 100vw; height: 100vh;'></div>
        <script type='text/javascript'>
            function loadMapScenario() {
                var map = new Microsoft.Maps.Map(document.getElementById('myMap'), {});
                
            }
        </script>
        <script type='text/javascript' src='https://www.bing.com/api/maps/mapcontrol?key=AvdhTPDu_6Nz0UARag14osJu4u70acKvcfr_Fo3Q9ZIDhohWw0t69zVBHOCtsnml&callback=loadMapScenario' async defer></script>
</asp:Content>
