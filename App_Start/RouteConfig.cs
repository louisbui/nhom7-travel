using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace lamlai_web_dulich
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
               name: "Tours Details",
               url: "chi-tiet/{id}",
               defaults: new { controller = "Details", action = "Detail", id = UrlParameter.Optional },
               namespaces: new[] { "lamlai_web_dulich.Controllers" }
           );
            routes.MapRoute(
               name: "Camnang Details",
               url: "chi-tiet-camnang/{id}",
               defaults: new { controller = "Details1", action = "Detail1", id = UrlParameter.Optional },
               namespaces: new[] { "lamlai_web_dulich.Controllers" }
           );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "TrangChu", id = UrlParameter.Optional }
            );
            
        }
    }
}
