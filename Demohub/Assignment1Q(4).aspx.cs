using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demohub
{
    public partial class Assignment1Q_4_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
            protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
            {
                string selectedColor = DropDownList1.SelectedValue;
                if (!string.IsNullOrEmpty(selectedColor))
                {
                    LabelResult.Text = $"You selected: {selectedColor}";
                    LabelResult.ForeColor = System.Drawing.Color.FromName(selectedColor);
                }
                else
                {
                    LabelResult.Text = "Please select a valid color.";
                    LabelResult.ForeColor = System.Drawing.Color.Black;
                }
            }

            protected void TextBox1_TextChanged(object sender, EventArgs e)
            {
                string name = TextBox1.Text;
                LabelGreeting.Text = $"Hello, {name}!";
            }
        }

    }
