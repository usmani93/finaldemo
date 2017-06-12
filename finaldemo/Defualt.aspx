<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo</title>
    <link href="styles/index.css" rel="stylesheet" />
    </head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" 
            class="head"
            runat="server">
            <div class="heading">Learn New Things!</div>
        </asp:Panel>

        <div>
            <ul>
                 <li><a class="active" href="Default.aspx">Home</a></li>
                 <li><a href="#news">News</a></li>
                 <li><a href="#contact">Contact</a></li>
                 <li><a href="#about">About</a></li>
            </ul>
        </div>
        <div class="panel">
            <br />
            <asp:Button ID="button0" runat="server" Text="Show Courses" class="button"  OnClick="button0_Click"/>
            <br />
            <asp:Panel ID="Panel2" runat="server" >
                        Course 1: Introduction
                    </asp:Panel>
            <br />
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <br />
                    <asp:Label ID="Label3" runat="server" CssClass="info" Text="">
                        An introductory course for you to learn this.
                    </asp:Label>
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass="quiz" Text="Take Quiz..." OnClick="Button1_Click" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="info" Text="">
                        Skills learnt in part 1 thoroughly practiced here.
                    </asp:Label>
                    <br />
                    <asp:Button ID="Button2" runat="server" CssClass="quiz" Text="Take Quiz..." OnClick="Button2_Click" />

                </asp:View>
                <asp:View ID="View3" runat="server">
                    <br />
                    <asp:Label ID="Label2" runat="server" CssClass="info" Text="">
                        More information and what to do next.
                    </asp:Label>
                    <br />
                    <asp:Button ID="Button3" runat="server" CssClass="quiz" Text="Take Quiz..." OnClick="Button3_Click" />

                    <br />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
