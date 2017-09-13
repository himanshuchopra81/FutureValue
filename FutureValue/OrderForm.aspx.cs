using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FutureValue
{
    public partial class OrderForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                for (int i = 50; i <= 500; i += 50) {
                    ddMonthlyInvestment.Items.Add(i.ToString());
                }
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if (IsValid) {
                int monthlyInvestment = Convert.ToInt32(ddMonthlyInvestment.SelectedValue);
                decimal yearlyInterestRate = Convert.ToDecimal(txtInterestRate.Text);
                int years = Convert.ToInt32(txtYears.Text);
                decimal futureValue = this.CalculateFututreValue(monthlyInvestment, yearlyInterestRate, years);
                lblFutureValue.Text = futureValue.ToString("c");
            }
        }
        protected decimal CalculateFututreValue(int monthlyInvestment, decimal yearlyInterestRate, int years) {
            int months = years * 12;
            decimal monthlyInterestRate = yearlyInterestRate / 12 / 100;
            decimal futureValue = 0;
            for (int i =0; i<months; i++) {
                futureValue = (futureValue + monthlyInvestment * (1 + monthlyInterestRate));
            }
            return futureValue;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ddMonthlyInvestment.SelectedIndex = 0;
            txtInterestRate.Text = "";
            txtYears.Text = "";
            lblFutureValue.Text = "";
        }
    }
}