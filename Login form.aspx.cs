using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // nothing yet
    }

    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid) return;

        var email = Email.Text?.Trim();
        var pwd = Password.Text;

        // TODO: Replace with your real authentication (DB lookup, Identity, etc.)
        var isValid = string.Equals(email, "admin@example.com", StringComparison.OrdinalIgnoreCase)
                      && pwd == "P@ssw0rd!";

        if (!isValid)
        {
            // Show a model error via ValidationSummary
            var cv = new CustomValidator
            {
                IsValid = false,
                ErrorMessage = "Invalid email or password."
            };
            Page.Validators.Add(cv);
            return;
        }

        // Example: set an auth cookie and redirect
        // FormsAuthentication.SetAuthCookie(email, RememberMe.Checked);
        // Response.Redirect("~/Default.aspx");

        Response.Redirect("~/Default.aspx");
    }
}
