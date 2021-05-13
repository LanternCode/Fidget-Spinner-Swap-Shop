using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;

/// <summary>
/// Summary description for clsSecurity
/// </summary>
public class clsSecurity
{
    public clsSecurity()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string SignUp(string EMail, string Password, string PasswordConfirm)
    {
        string ErrorMsg = "";

        if( !IsEmailUnique( EMail ) )
        {
            ErrorMsg = "Account with this email is already registered.";
        }
        else if(Password == PasswordConfirm)
        {
            string HashPassword = GetHashString(Password + EMail);
            clsDataConnectionOLDB DB = new clsDataConnectionOLDB();
            DB.AddParameter("@EMail", EMail);
            DB.AddParameter("@userPassword", HashPassword);
            DB.Execute("qry_Users_AddUser");
        }
        else
        {
            ErrorMsg = "The passwords do not match.";
        }

        return ErrorMsg;
    }

    private string GetHashString(string SomeText)
    {
        if(SomeText != "")
        {
            SHA256Managed HashGenerator = new SHA256Managed();
            string HashString;
            byte[] TextBytes;
            byte[] HashBytes;

            TextBytes = System.Text.Encoding.UTF8.GetBytes(SomeText);
            HashBytes = HashGenerator.ComputeHash(TextBytes);

            HashString = BitConverter.ToString(HashBytes).Replace("-", "");
            return HashString;
        }
        else
        {
            return "";
        }
    }

    public Boolean Login(string EMail, string Password)
    {
        Password = GetHashString(Password + EMail);
        clsDataConnectionOLDB UserAccount = new clsDataConnectionOLDB();
        UserAccount.AddParameter("@EMail", EMail);
        UserAccount.AddParameter("@UserPassword", Password);
        UserAccount.Execute("qry_Users_FilterByEmailAndPassword");

        if(UserAccount.Count >= 1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public Boolean IsEmailUnique(string EMail)
    {
        clsDataConnectionOLDB DBManager = new clsDataConnectionOLDB();
        DBManager.AddParameter("@EMail", EMail);
        DBManager.Execute("qry_Users_EmailExists");

        if (DBManager.Count >= 1)
        {
            return false;
        }
        else return true;
    }

    public Boolean ValidateInput(string ToBeValidated)
    {
        Boolean OK = true;
        if(!String.IsNullOrEmpty(ToBeValidated))
        {
            ToBeValidated = ToBeValidated.ToLower();
            if (ToBeValidated.Contains("<script>"))
            {
                OK = false;
            }
            return OK;
        }
        else
        {
            OK = false;
            return OK;
        }
        
    }

}