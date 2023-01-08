using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using lamlai_web_dulich.Models;

namespace lamlai_web_dulich.Controllers
{
    public class HomeController : Controller
    {

        public ActionResult Index()
        {
            return View();
        }
        // GET: Home

        [HttpGet]
        public ActionResult DatTour()
        {
            return View();
        }      
    }
}