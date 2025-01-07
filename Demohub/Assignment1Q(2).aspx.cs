using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demohub
{
    public partial class Assignment1Q_2_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConvert_Click(object sender, EventArgs e)
        {
            try
            {
                double inputTemperature = Convert.ToDouble(txtTemperature.Text);
                string conversionType = ddlConversion.SelectedValue;
                double result;

                if (conversionType == "CtoF")
                {
                    result = (inputTemperature * 9 / 5) + 32;
                    lblResult.Text = $"{inputTemperature}°C = {result:F2}°F";
                }
                else if (conversionType == "FtoC")
                {
                    result = (inputTemperature - 32) * 5 / 9;
                    lblResult.Text = $"{inputTemperature}°F = {result:F2}°C";
                }
            }
            catch (Exception ex)
            {
                lblResult.Text = "Invalid input! Please enter a valid number.";
            }
        }
    }

    }
