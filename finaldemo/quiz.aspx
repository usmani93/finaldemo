<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quiz.aspx.cs" Inherits="WebApplication1.quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo Quiz</title>
    <link href="styles/index.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" 
            class="head"
            runat="server">
            <div class="heading">Learn New Things!</div>
        </asp:Panel>

        <div class="panel1">
            <asp:Panel ID="Panel2" CssClass="panel3" runat="server">
                <asp:Button ID="Button1" runat="server" CssClass="change" Text="Main" OnClick="Button1_Click"/>
                <asp:Button ID="Button2" runat="server" CssClass="change" Text="Video" OnClick="Button2_Click"/>
                <asp:Button ID="Button3" runat="server" CssClass="change" Text="Audio" OnClick="Button3_Click"/>
                <asp:Button ID="Button4" runat="server" CssClass="change" Text="Quiz" OnClick="Button4_Click"/>
            </asp:Panel>
            <br />
            <asp:MultiView ID="MultiView1" runat="server">

                <asp:View ID="View1" runat="server">
                    <br />
                    Here is a video for you, watch it!
                    <br />
                    <video width="800" controls>
                        <source src="/Video/Demo1.mp4" type="video/mp4" />
                    Your browser does not support HTML5 video.
                    </video>
                </asp:View>

                <asp:View ID="View2" runat="server">
                    <br />
                    Here is an audio clip for you, listen to it and be prepared for the quiz!
                    <br />
                    <audio controls>
                        <source src="horse.ogg" type="audio/ogg">
                        Your browser does not support the audio element.
                    </audio>

                </asp:View>

                <asp:View ID="View3" runat="server">
                    <br />
                    Here are the questions...
                    <br />
                </asp:View>
            </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
