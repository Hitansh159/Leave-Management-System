/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2020-08-11 11:00:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_005fprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    ");
request.setAttribute("user", request.getAttribute("user")); 
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <title>profile</title>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css\"\r\n");
      out.write("    integrity=\"sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX\" crossorigin=\"anonymous\">\r\n");
      out.write("  <link href=\"https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <style>\r\n");
      out.write("*{\r\n");
      out.write("  margin: 0;\r\n");
      out.write("  padding: 0;\r\n");
      out.write("}\r\n");
      out.write("#navId{\r\n");
      out.write("  display: flex;\r\n");
      out.write("  align-items: center;\r\n");
      out.write("}\r\n");
      out.write("#navId{\r\n");
      out.write("  position: relative;\r\n");
      out.write("}\r\n");
      out.write("#pic{\r\n");
      out.write("  margin: 10px 10px;\r\n");
      out.write("  height: 60px;\r\n");
      out.write("}\r\n");
      out.write("#photo{\r\n");
      out.write("    margin: 50px 50px;\r\n");
      out.write("}\r\n");
      out.write("#navId::before{\r\n");
      out.write("   content: \"\";\r\n");
      out.write("   background-color: gray;\r\n");
      out.write("   position: absolute;\r\n");
      out.write("   height: 100%;\r\n");
      out.write("   width: 100%;\r\n");
      out.write("   z-index: -1;\r\n");
      out.write("   opacity: 0.4;\r\n");
      out.write("}\r\n");
      out.write("h1{\r\n");
      out.write("  font-size: 30px;\r\n");
      out.write("  margin-top: 5px;\r\n");
      out.write("  padding: 1px 20px;\r\n");
      out.write("  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;\r\n");
      out.write("}\r\n");
      out.write("h2{\r\n");
      out.write("  margin-top: 1px;\r\n");
      out.write("  margin-left: 30px;\r\n");
      out.write("  padding: 1px 20px;\r\n");
      out.write("  font-size: 30px;\r\n");
      out.write("  font-family: 'Times New Roman', Times, serif;\r\n");
      out.write("}\r\n");
      out.write("h5{\r\n");
      out.write("  margin-top: 1px;\r\n");
      out.write("  margin-left: 50px;\r\n");
      out.write("  padding: 3px 20px;\r\n");
      out.write("  font-size: 20px;\r\n");
      out.write("  font-family: 'Times New Roman', Times, serif;\r\n");
      out.write("}\r\n");
      out.write("h6{\r\n");
      out.write("  margin-top: 1px;\r\n");
      out.write("  margin-left: 50px;\r\n");
      out.write("  padding: 1px 20px;\r\n");
      out.write("  font-size: 20px;\r\n");
      out.write("  font-family: 'Times New Roman', Times, serif;\r\n");
      out.write("}\r\n");
      out.write("h3{\r\n");
      out.write("  margin-top: 1px;\r\n");
      out.write("  margin-left: 500px;\r\n");
      out.write("  padding: 1px 20px;\r\n");
      out.write("  font-size: 20px;\r\n");
      out.write("  font-family: 'Times New Roman', Times, serif;\r\n");
      out.write("}\r\n");
      out.write("form{\r\n");
      out.write("  margin-left: 300px;\r\n");
      out.write("  margin-top: 50px;\r\n");
      out.write("}\r\n");
      out.write("  </style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>  \r\n");
      out.write("      <div id=\"pic\">\r\n");
      out.write("        <a href=\"");
      out.print(request.getContextPath());
      out.write("/index\">\r\n");
      out.write("          <img src=\"pic.png\">\r\n");
      out.write("        </a>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("    <b><h1 class=\"h-primary\" > Personal Info </h1></b><br>\r\n");
      out.write("    <div id=\"photo\">\r\n");
      out.write("        <img src=\"https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png\"\r\n");
      out.write("          width=\"200\" height=\"200\" >\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                  <div class=\"content-center\">\r\n");
      out.write("                    <div class=\"h2 title\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write(' ');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.surname}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</div>\r\n");
      out.write("                    <p class=\"category text-white\">Web Developer, Graphic Designer,  Photographer</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"section\" id=\"about\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("              <div class=\"card\" data-aos=\"fade-up\" data-aos-offset=\"10\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                  <div class=\"col-lg-6 col-md-12\">\r\n");
      out.write("                    <div class=\"card-body\">\r\n");
      out.write("                      <div class=\"h4 mt-0 title\">About</div>\r\n");
      out.write("                      <p>Hello! I am ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write(' ');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.surname}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write(". Web Developer, Graphic Designer and Photographer.</p>\r\n");
      out.write("                      <p>Creative profile page in a HTML . </p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"col-lg-6 col-md-12\">\r\n");
      out.write("                    <div class=\"card-body\">\r\n");
      out.write("                      <div class=\"h4 mt-0 title\">Basic Information</div>\r\n");
      out.write("                      <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-sm-4\"><strong class=\"text-uppercase\">Age:</strong></div>\r\n");
      out.write("                        <div class=\"col-sm-8\">24</div>\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"row mt-3\">\r\n");
      out.write("                        <div class=\"col-sm-4\"><strong class=\"text-uppercase\">Email:</strong></div>\r\n");
      out.write("                        <div class=\"col-sm-8\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.email}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</div>\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"row mt-3\">\r\n");
      out.write("                        <div class=\"col-sm-4\"><strong class=\"text-uppercase\">Phone:</strong></div>\r\n");
      out.write("                        <div class=\"col-sm-8\">+91 8282822828</div>\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"row mt-3\">\r\n");
      out.write("                        <div class=\"col-sm-4\"><strong class=\"text-uppercase\">Address:</strong></div>\r\n");
      out.write("                        <div class=\"col-sm-8\">Sector A4, City Center, Mumbai, India</div>\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"row mt-3\">\r\n");
      out.write("                        <div class=\"col-sm-4\"><strong class=\"text-uppercase\">Language:</strong></div>\r\n");
      out.write("                        <div class=\"col-sm-8\">English, Hindi, Marathi,</div>\r\n");
      out.write("                      </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <br>\r\n");
      out.write("          \r\n");
      out.write("         <form> \r\n");
      out.write("          <div class=\"card-columns align-center-up\">\r\n");
      out.write("            <div class=\"card bg-primary\">\r\n");
      out.write("              <div class=\"card-body text-center\">\r\n");
      out.write("                   <p class=\"card-text\">Department Notice</p>\r\n");
      out.write("                   <a href=\"#\" class=\"btn btn-danger\">GO</a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card bg-warning\">\r\n");
      out.write("              <div class=\"card-body text-center\">\r\n");
      out.write("                <p class=\"card-text\">Activities</p>\r\n");
      out.write("                <a href=\"#\" class=\"btn btn-danger\">GO</a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card bg-success\">\r\n");
      out.write("              <div class=\"card-body text-center\">\r\n");
      out.write("                <p class=\"card-text\">Salary Details </p>\r\n");
      out.write("                <a href=\"#\" class=\"btn btn-danger\">GO</a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card bg-info\">\r\n");
      out.write("              <div class=\"card-body text-center\">\r\n");
      out.write("                <p class=\"card-text\">Leave portal</p>\r\n");
      out.write("                <a href=\"");
      out.print(request.getContextPath() );
      out.write("/leave\" class=\"btn btn-danger\">GO</a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div> \r\n");
      out.write("        </div> \r\n");
      out.write("        </div>\r\n");
      out.write("        </form>\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("  <!-- brfore #667eea indigo-500 -->\r\n");
      out.write("  <!-- onhover #5a67d8 indigo-600   -->\r\n");
      out.write("  <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\" integrity=\"sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("  <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js\" integrity=\"sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
