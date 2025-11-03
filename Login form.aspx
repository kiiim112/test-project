<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        :root{
          --bg:#0b1020; --card:rgba(255,255,255,.08); --stroke:rgba(255,255,255,.15);
          --text:#e7e9ee; --muted:#a9b2c7; --focus:#7aa2ff; --btn:#4f79ff; --btn2:#3e64e8; --error:#ff6b6b;
        }
        *{box-sizing:border-box} html,body{height:100%}
        body{margin:0;font-family:ui-sans-serif,system-ui,Segoe UI,Inter,Arial;color:var(--text);
             background: radial-gradient(1200px 1200px at 10% 10%, #16254b, transparent),
                         radial-gradient(1200px 1200px at 90% 90%, #101b36, transparent), var(--bg);}
        .wrap{min-height:100dvh;display:grid;place-items:center;padding:32px;}
        .card{width:100%;max-width:420px;padding:28px;border-radius:20px;background:var(--card);
              backdrop-filter:blur(10px);border:1px solid var(--stroke);box-shadow:0 10px 40px rgba(0,0,0,.35)}
        h1{margin:0 0 4px;font-size:26px} .sub{margin:0 0 18px;color:var(--muted);font-size:14px}
        label{display:block;margin-bottom:8px;color:var(--muted);font-size:13px}
        input[type=text],input[type=password]{width:100%;padding:12px 14px;border-radius:12px;border:1px solid var(--stroke);
              background:rgba(0,0,0,.2);color:var(--text);outline:none}
        input:focus{border-color:var(--focus);box-shadow:0 0 0 3px rgba(122,162,255,.25)}
        .pwd{position:relative}
        .toggle{position:absolute;right:6px;top:50%;transform:translateY(-50%);height:28px;padding:0 8px;border:none;
                background:transparent;color:var(--muted);cursor:pointer;border-radius:8px}
        .toggle:hover{color:var(--text);background:rgba(255,255,255,.06)}
        .meta{display:flex;justify-content:space-between;align-items:center;margin:8px 0 16px}
        .remember{display:flex;gap:8px;align-items:center;color:var(--muted);font-size:13px}
        .link{color:var(--focus);text-decoration:none;font-size:13px}
        .link:hover{text-decoration:underline}
        .btn{width:100%;padding:12px 14px;border-radius:12px;border:1px solid transparent;background:linear-gradient(180deg,var(--btn),var(--btn2));
             color:#fff;font-weight:600;cursor:pointer}
        .val{color:var(--error);font-size:12px;margin-top:6px;display:block}
        .summary{color:var(--error);font-size:13px;margin:0 0 8px}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="wrap">
        <div class="card">
            <h1>Welcome back</h1>
            <p class="sub">Sign in to continue</p>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="summary" />

            <div class="field">
                <label for="Email">Email</label>
                <asp:TextBox ID="Email" runat="server" CssClass="input" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ErrorMessage="Email is required." CssClass="val" />
                <asp:RegularExpressionValidator runat="server" ControlToValidate="Email"
                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ErrorMessage="Enter a valid email." CssClass="val" />
            </div>

            <div class="field">
                <label for="Password">Pa</label><a href="#" class="link">Forgot password?</a>
            </div>

            <asp:Button ID="BtnLogin" runat="server" Text="Sign in" CssClass="btn" OnClick="BtnLogin_Click" />
        </div>
    </div>
    </form>

    <script>
        function togglePwd() {
            var tb = document.getElementById("<%= Password.ClientID %>");
            if (!tb) return;
            tb.type = (tb.type === "password") ? "text" : "password";
        }
    </script>
</body>
</html>
