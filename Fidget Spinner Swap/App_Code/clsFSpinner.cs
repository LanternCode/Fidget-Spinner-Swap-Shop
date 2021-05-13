using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsFSpinner
/// </summary>
public class clsFSpinner
{
    public clsFSpinner()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    private Int32 mFSpinnerNo;
    public Int32 FSpinnerNo
    {
        get
        {
            return mFSpinnerNo;
        }
        set
        {
            mFSpinnerNo = value;
        }
    }

    private string mTitle;
    public string Title
    {
        get
        {
            return mTitle;
        }
        set
        {
            mTitle = value;
        }
    }

    private string mImage;
    public string Image
    {
        get
        {
            return mImage;
        }
        set
        {
            mImage = value;
        }
    }

    public Boolean Find(Int32 FSpinnerNo)
    {
        List<clsFSpinner> mFSpinnerList = new List<clsFSpinner>();

        clsFSpinner mySpinner = new clsFSpinner();
        mySpinner.FSpinnerNo = 1;
        mySpinner.Title = "Limited Collection 5-arm Spinner";
        mySpinner.Image = "../Images/Spinner.jpg";
        mFSpinnerList.Add(mySpinner);

        mySpinner = new clsFSpinner();
        mySpinner.FSpinnerNo = 2;
        mySpinner.Title = "Shines in the Night Special Edition Spinner";
        mySpinner.Image = "../Images/Spinner2.jpg";
        mFSpinnerList.Add(mySpinner);

        mySpinner = new clsFSpinner();
        mySpinner.FSpinnerNo = 3;
        mySpinner.Title = "MLG Premium Class Spinner";
        mySpinner.Image = "../Images/Spinner3.jpg";
        mFSpinnerList.Add(mySpinner);

        mySpinner = new clsFSpinner();
        mySpinner.FSpinnerNo = 4;
        mySpinner.Title = "1000 PLN Super Spinner 2k19 PRO-Z Rock x Skimm Cross";
        mySpinner.Image = "../Images/Spinner4.jpg";
        mFSpinnerList.Add(mySpinner);

        if(FSpinnerNo >=1 & FSpinnerNo <= 4)
        {
            FSpinnerNo--;
            mFSpinnerNo = mFSpinnerList[FSpinnerNo].FSpinnerNo;
            mTitle = mFSpinnerList[FSpinnerNo].Title;
            mImage = mFSpinnerList[FSpinnerNo].Image;
            return true;
        }
        else
        {
            return false;
        }
    }
}