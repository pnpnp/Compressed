/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.36
 * Generated at: 2019-01-20 15:32:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class customerprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

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
      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <title>Profile</title>\r\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\r\n");
      out.write("  <meta content=\"\" name=\"keywords\">\r\n");
      out.write("  <meta content=\"\" name=\"description\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Favicons -->\r\n");
      out.write("  <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/img/favicon.png\" rel=\"icon\">\r\n");
      out.write("  <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Google Fonts -->\r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Bootstrap CSS File -->\r\n");
      out.write("  <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Libraries CSS Files -->\r\n");
      out.write("  <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/animate/animate.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/ionicons/css/ionicons.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/lightbox/css/lightbox.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Main Stylesheet File -->\r\n");
      out.write("  <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("  <!--==========================\r\n");
      out.write("    Header\r\n");
      out.write("  ============================-->\r\n");
      out.write("  <header id=\"header\">\r\n");
      out.write("    <div class=\"container-fluid\">\r\n");
      out.write("\r\n");
      out.write("      <div id=\"logo\" class=\"pull-left\">\r\n");
      out.write("        <h1><a href=\"#intro\" class=\"scrollto\">United Home Loans</a></h1>\r\n");
      out.write("        <!-- Uncomment below if you prefer to use an image logo -->\r\n");
      out.write("        <!-- <a href=\"#intro\"><img src=\"img/logo.png\" alt=\"\" title=\"\" /></a>-->\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <nav id=\"nav-menu-container\">\r\n");
      out.write("        <ul class=\"nav-menu\">\r\n");
      out.write("          <li><a href=\"index1\">Home</a></li>\r\n");
      out.write("          <li><a href=\"calculators1\">Calculator</a></li>\r\n");
      out.write("          <li><a href=\"aboutus1\">About Us</a></li>\r\n");
      out.write("          <li><a href=\"faq1\">FAQ</a></li>\r\n");
      out.write("          <li class=\"menu-active\"><a href=\"customerprofile\">Profile</a></li>\r\n");
      out.write("          <li><a href=\"logout\">Logout</a></li>\r\n");
      out.write("          \r\n");
      out.write("     \r\n");
      out.write("        </ul>\r\n");
      out.write("      </nav>\r\n");
      out.write("    </div>\r\n");
      out.write("  </header>\r\n");
      out.write("\r\n");
      out.write("  <!--==========================\r\n");
      out.write("    Intro Section\r\n");
      out.write("  ============================-->\r\n");
      out.write("  <section id=\"intro2\">\r\n");
      out.write("    <br>\r\n");
      out.write("    <br> <br>\r\n");
      out.write("    <br> <br>\r\n");
      out.write("<!--     <h2 class=\"text-center\"> Welcome User!</h2>\r\n");
      out.write(" -->    <h2 class=\"text-center\"> Welcome ");
      out.print(session.getAttribute("firstName"));
      out.write("  </h2><br>\r\n");
      out.write("    <!-- <button type=\"button\" class=\"btn btn-success\">User Details</button> &nbsp; &nbsp;\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-warning\">View Documents</button> &nbsp; &nbsp;\r\n");
      out.write("            <button type=\"button\" class=\"btn btn-danger\">Loan Tracker</button>> &nbsp; &nbsp;\r\n");
      out.write("                <button type=\"button\" class=\"btn btn-info\">Account Details</button>&nbsp; &nbsp; -->\r\n");
      out.write("\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("                <a href=\"userdetails\" class=\"btn btn-success\" role=\"button\">User Details</a> &nbsp; &nbsp;\r\n");
      out.write("                <a href=\"propertydetails\" class=\"btn btn-warning\" role=\"button\">Property Details</a> &nbsp; &nbsp;\r\n");
      out.write("                <a href=\"loantracker\" class=\"btn btn-danger\" role=\"button\">Loan Tracker</a> &nbsp; &nbsp;\r\n");
      out.write("                <a href=\"accountdetails\" class=\"btn btn-info\" role=\"button\">Account Details</a> &nbsp; &nbsp;\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  </section><!-- #intro -->\r\n");
      out.write("\r\n");
      out.write("  <main id=\"main\">\r\n");
      out.write("\r\n");
      out.write("      <footer id=\"footer\">\r\n");
      out.write("\r\n");
      out.write("          <div class=\"footer-top\">\r\n");
      out.write("      \r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("      \r\n");
      out.write("              <div class=\"row\">\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("                <div class=\"col-lg-3 col-md-6 footer-info\">\r\n");
      out.write("      \r\n");
      out.write("                  <h3>United Home Loans</h3>\r\n");
      out.write("      \r\n");
      out.write("                  <p>We are here to guide you on <br>everything you need to know <br>about availing a home loan.</p>\r\n");
      out.write("      \r\n");
      out.write("                </div>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("                <div class=\"col-lg-3 col-md-6 footer-links\">\r\n");
      out.write("      \r\n");
      out.write("                  <h4>Useful Links</h4>\r\n");
      out.write("      \r\n");
      out.write("                  <ul>\r\n");
      out.write("      \r\n");
      out.write("                    <li><i class=\"ion-ios-arrow-right\"></i> <a href=\"#\">Home</a></li>\r\n");
      out.write("      \r\n");
      out.write("                    <li><i class=\"ion-ios-arrow-right\"></i> <a href=\"#\">Calculators</a></li>\r\n");
      out.write("      \r\n");
      out.write("                    <li><i class=\"ion-ios-arrow-right\"></i> <a href=\"#\">About Us</a></li>\r\n");
      out.write("      \r\n");
      out.write("                    <li><i class=\"ion-ios-arrow-right\"></i> <a href=\"#\">Terms of service</a></li>\r\n");
      out.write("      \r\n");
      out.write("                    <li><i class=\"ion-ios-arrow-right\"></i> <a href=\"#\">Privacy policy</a></li>\r\n");
      out.write("      \r\n");
      out.write("                  </ul>\r\n");
      out.write("      \r\n");
      out.write("                </div>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("                <div class=\"col-lg-3 col-md-6 footer-contact\">\r\n");
      out.write("      \r\n");
      out.write("                  <h4>Contact Us</h4>\r\n");
      out.write("      \r\n");
      out.write("                  <p>\r\n");
      out.write("      \r\n");
      out.write("                    TTC Electronic Zone, <br>\r\n");
      out.write("      \r\n");
      out.write("                    Mahape Road, <br>\r\n");
      out.write("      \r\n");
      out.write("                    Navi Mumbai, <br> Maharashtra 400710, <br>India <br> <br>\r\n");
      out.write("      \r\n");
      out.write("                    <strong>Phone:</strong>  022 6795 4545<br>\r\n");
      out.write("      \r\n");
      out.write("                    <strong>Email:</strong> unitedhl@gmail.com<br>\r\n");
      out.write("      \r\n");
      out.write("                  </p>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("                  <div class=\"social-links\">\r\n");
      out.write("      \r\n");
      out.write("                    <a href=\"#\" class=\"twitter\"><i class=\"fa fa-twitter\"></i></a>\r\n");
      out.write("      \r\n");
      out.write("                    <a href=\"#\" class=\"facebook\"><i class=\"fa fa-facebook\"></i></a>\r\n");
      out.write("      \r\n");
      out.write("                    <a href=\"#\" class=\"instagram\"><i class=\"fa fa-instagram\"></i></a>\r\n");
      out.write("      \r\n");
      out.write("                    <a href=\"#\" class=\"google-plus\"><i class=\"fa fa-google-plus\"></i></a>\r\n");
      out.write("      \r\n");
      out.write("                    <a href=\"#\" class=\"linkedin\"><i class=\"fa fa-linkedin\"></i></a>\r\n");
      out.write("      \r\n");
      out.write("                  </div>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("                </div>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("                <div class=\"col-lg-3 col-md-6 footer-newsletter\">\r\n");
      out.write("      \r\n");
      out.write("                  <h4>Our Newsletter</h4>\r\n");
      out.write("      \r\n");
      out.write("                  <p>Subscribe to our Newsletter for regular updates.</p>\r\n");
      out.write("      \r\n");
      out.write("                  <form action=\"\" method=\"post\">\r\n");
      out.write("      \r\n");
      out.write("                    <input type=\"email\" name=\"email\"><input type=\"submit\"  value=\"Subscribe\">\r\n");
      out.write("      \r\n");
      out.write("                  </form>\r\n");
      out.write("      \r\n");
      out.write("                </div>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("              </div>\r\n");
      out.write("      \r\n");
      out.write("            </div>\r\n");
      out.write("      \r\n");
      out.write("          </div>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("          <div class=\"container\">\r\n");
      out.write("      \r\n");
      out.write("            <div class=\"copyright\">\r\n");
      out.write("      \r\n");
      out.write("                Disclaimer - \"As regards deposit taking activity of the company, the viewers may refer to the advertisement in the newspaper / information furnished in the application form for soliciting public deposits; published on June 28, 2018 in the Free Press Journal and in Navshakti, Mumbai, respectively. The Company is having a valid Certificate of Registration dated 31/07/2001 issued by the National Housing Bank under Section 29A of the National Housing Bank Act, 1987. However, the National Housing Bank does not accept any responsibility or guarantee about the present position as to the financial soundness of the company or for the correctness of any of the statements or representations made or opinions expressed by the company and for repayment of deposits / discharge of the liabilities by the company.\"\r\n");
      out.write("      \r\n");
      out.write("                <br> <br>\r\n");
      out.write("      \r\n");
      out.write("                *The information mentioned herein is subject to change without prior notice. <br> Please visit your nearest United branch for detailed information on our various products and changes, if any. Terms and conditions apply. <br> <br>\r\n");
      out.write("      \r\n");
      out.write("              &copy; Copyright <strong>United Home Loans</strong>. All Rights Reserved\r\n");
      out.write("      \r\n");
      out.write("            </div>\r\n");
      out.write("      \r\n");
      out.write("            <div class=\"credits\">\r\n");
      out.write("      \r\n");
      out.write("             \r\n");
      out.write("      \r\n");
      out.write("            \r\n");
      out.write("      \r\n");
      out.write("            </div>\r\n");
      out.write("      \r\n");
      out.write("          </div>\r\n");
      out.write("      \r\n");
      out.write("        </footer><!-- #footer -->\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("        <a href=\"#\" class=\"back-to-top\"><i class=\"fa fa-chevron-up\"></i></a>\r\n");
      out.write("      \r\n");
      out.write("        <!-- Uncomment below i you want to use a preloader -->\r\n");
      out.write("      \r\n");
      out.write("        <!-- <div id=\"preloader\"></div> -->\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("\r\n");
      out.write("  <a href=\"#\" class=\"back-to-top\"><i class=\"fa fa-chevron-up\"></i></a>\r\n");
      out.write("  <!-- Uncomment below i you want to use a preloader -->\r\n");
      out.write("  <!-- <div id=\"preloader\"></div> -->\r\n");
      out.write("\r\n");
      out.write("  <!-- JavaScript Libraries -->\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/jquery/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/jquery/jquery-migrate.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/bootstrap/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/easing/easing.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/superfish/hoverIntent.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/superfish/superfish.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/wow/wow.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/waypoints/waypoints.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/counterup/counterup.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/owlcarousel/owl.carousel.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/isotope/isotope.pkgd.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/lightbox/js/lightbox.min.js\"></script>\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/lib/touchSwipe/jquery.touchSwipe.min.js\"></script>\r\n");
      out.write("  <!-- Contact Form JavaScript File -->\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/contactform/contactform.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  <!-- Template Main Javascript File -->\r\n");
      out.write("  <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
