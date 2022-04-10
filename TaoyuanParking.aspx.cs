using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WalkingLab
{
    public partial class TaoyuanParking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!File.Exists(Server.MapPath("~/TaoyuanParking.json")) || (DateTime.Now - new FileInfo(Server.MapPath("~/TaoyuanParking.json")).LastWriteTime).TotalMinutes > 1)
                {
                    using (WebClient client = new WebClient())
                    {
                        client.Encoding = Encoding.UTF8;
                        string data = client.DownloadString("https://data.tycg.gov.tw/opendata/datalist/datasetMeta/download?id=f4cc0b12-86ac-40f9-8745-885bddc18f79&rid=0daad6e6-0632-44f5-bd25-5e1de1e9146f");
                        JObject jObj = JObject.Parse(data);
                        string result = JsonConvert.SerializeObject(jObj["parkingLots"], Formatting.Indented);
                        File.WriteAllText(Server.MapPath("~/TaoyuanParking.json"), result);
                    }
                }
            }
        }
    }
}