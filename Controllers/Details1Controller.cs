﻿using lamlai_web_dulich.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace lamlai_web_dulich.Controllers
{
    public class Details1Controller : Controller
    {
        // GET: Details1
        public ActionResult DanhSach()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Detail1(int id)
        {
            var db = new DuLichDBEntities();
            var details1 = new mapCamNang().ChiTiet(id);
            return View(details1);
        }
    }
} 