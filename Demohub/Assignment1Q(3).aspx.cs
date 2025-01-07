using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demohub
{
    public partial class Assignment1Q_3_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
            public double? Number1 { get; set; }

           
            public double? Number2 { get; set; }

            
            public string Operation { get; set; }

            public string Result { get; private set; }

            public void OnPost()
            {
                if (Number1.HasValue && Number2.HasValue && !string.IsNullOrEmpty(Operation))
                {
                    switch (Operation)
                    {
                        case "add":
                            Result = (Number1.Value + Number2.Value).ToString();
                            break;
                        case "subtract":
                            Result = (Number1.Value - Number2.Value).ToString();
                            break;
                        case "multiply":
                            Result = (Number1.Value * Number2.Value).ToString();
                            break;
                        case "divide":
                            Result = Number2.Value != 0 ? (Number1.Value / Number2.Value).ToString() : "Error: Division by zero";
                            break;
                        default:
                            Result = "Invalid operation";
                            break;
                    }
                }
                else
                {
                    Result = "Please provide valid inputs and select an operation.";
                }
            }
        }
    }


