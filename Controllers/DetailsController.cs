using lamlai_web_dulich.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace lamlai_web_dulich.Controllers
{
    public class DetailsController : Controller
    {
        // GET: Details
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Detail(int id)
        {   
            var db = new DuLichDBEntities();
            var details = new mapTour().ChiTiet(id);

            return View(details);
        }
    }
}