using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestWebApplication
{
    public partial class Test4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //List<string> aa = new List<string>();
            //aa.Add("aa");
            //aa.Add("abb");
            //aa.Add("ccc");
            //aa.Add("ccb");
            //aa.Add("dd");

            //Sort(aa,'c');
        }

        public List<string> Sort(List<string> theList, char theChar)
        {
            List<string> lst = new List<string>();

            if (theList != null)
            {
                foreach (string item in theList)
                {
                    if (item.StartsWith(theChar.ToString()))
                    {
                        lst.Add(item);
                    }
                }
            }

            return lst;
        }
    }
}