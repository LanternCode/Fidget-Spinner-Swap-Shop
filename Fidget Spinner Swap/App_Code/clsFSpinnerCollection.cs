using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsFSpinnerCollection
/// </summary>
public class clsFSpinnerCollection
{
    public clsFSpinnerCollection()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Int32 Count
    {
        get
        {
            return 4;
        }
    }

    public List<clsFSpinner> FSpinnerList
    {
        get
        {
            List<clsFSpinner> mFSpinnerList = new List<clsFSpinner>();

            clsFSpinner mySpinner = new clsFSpinner();
            mySpinner.FSpinnerNo = 1;
            mySpinner.Title = "Limited Collection 5-arm Spinner";
            mFSpinnerList.Add(mySpinner);

            mySpinner = new clsFSpinner();
            mySpinner.FSpinnerNo = 2;
            mySpinner.Title = "Shines in the Night Special Edition Spinner";
            mFSpinnerList.Add(mySpinner);

            mySpinner = new clsFSpinner();
            mySpinner.FSpinnerNo = 3;
            mySpinner.Title = "MLG Premium Class Spinner";
            mFSpinnerList.Add(mySpinner);

            mySpinner = new clsFSpinner();
            mySpinner.FSpinnerNo = 4;
            mySpinner.Title = "1000 PLN Super Spinner 2k19 PRO-Z Rock x Skimm Cross";
            mFSpinnerList.Add(mySpinner);

            return mFSpinnerList;
        }
    }
}