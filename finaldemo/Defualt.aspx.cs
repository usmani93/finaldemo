using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;


        }

        protected override void OnInit(EventArgs e)
        {
            create();
        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        void create()
        {
            int num = 1;
            Panel2.Controls.Add(new LiteralControl("<br/>"));
            for (int core = 1; core < 4; core++)
            {
                var acore = new Button();
                acore.CssClass = "button";
                var sum = num++;
                acore.CommandName = "part" + sum;
                acore.Text = "Part " + sum;
                acore.Visible = true;
                Panel2.Controls.Add(acore);
                Panel2.Controls.Add(new LiteralControl("<br/>"));
                acore.Click += Acore_Click;
            }
            Panel2.Visible = false;
        }

        private void Acore_Click(object sender, EventArgs e)
        {
            var number = ((Button)sender).CommandName;
            if (number == "part1")
            {
                ((Button)sender).Text = "Part 1";
                MultiView1.ActiveViewIndex = 0;
            }
            if (number == "part2")
            {
                ((Button)sender).Text = "Part 2";
                MultiView1.ActiveViewIndex = 1;
            }
            if (number == "part3")
            {
                ((Button)sender).Text = "Part 3";
                MultiView1.ActiveViewIndex = 2;
            }
        }

        protected void button0_Click(object sender, EventArgs e)
        {
            if (Panel2.Visible == false)
            {
                Panel2.Visible = true;
                button0.Text = "Hide Courses";
            }
            else
            {
                Panel2.Visible = false;
                button0.Text = "Show Courses";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("quiz.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("quiz.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("quiz.aspx");
        }
    }
}