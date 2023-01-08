using lamlai_web_dulich.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace lamlai_web_dulich.Controllers
{
    public class CamNangDuLichHomeController : Controller
    {
        public ActionResult DanhSach()
        {
            return View(new mapCamNang().DanhSach());
        }
    }
}