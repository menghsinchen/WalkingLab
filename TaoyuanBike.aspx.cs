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
    public partial class TaoyuanBike : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!File.Exists(Server.MapPath("~/TaoyuanBike.json")) || (DateTime.Now - new FileInfo(Server.MapPath("~/TaoyuanBike.json")).LastWriteTime).TotalMinutes > 1)
                {
                    using (WebClient client = new WebClient())
                    {
                        client.Encoding = Encoding.UTF8;
                        string data = client.DownloadString("https://data.tycg.gov.tw/opendata/datalist/datasetMeta/download?id=5ca2bfc7-9ace-4719-88ae-4034b9a5a55c&rid=a1b4714b-3b75-4ff8-a8f2-cc377e4eaa0f");
                        JObject jObj = JObject.Parse(data);
                        JArray jArr = new JArray();
                        foreach (JToken jt in jObj["retVal"])
                        {
                            jArr.Add(jt.First);
                        }
                        string result = JsonConvert.SerializeObject(jArr, Formatting.Indented);
                        File.WriteAllText(Server.MapPath("~/TaoyuanBike.json"), result);
                    }
                }
            }
        }
    }
}