<cfcomponent>
<cfoutput>
<cffunction name="init" localmode="modern" access="public">
	<cfscript>
	content type="text/html; charset=UTF-8";
	request.currentPath="/cfml-example-standalone";
	request.title="Default Title";
	request.stylesheets=[];
	request.scripts=[];
	</cfscript>
</cffunction>

<cffunction name="header" localmode="modern" access="public">
	<cfscript>
	</cfscript><!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
	<title>#request.title#</title>
	<!-- DO NOT modify the framework files.  They will need to be replaced periodically. -->
	<link href="/css-framework-standalone/framework/zOS.css" rel="stylesheet" type="text/css" />
	<link href="/css-framework-standalone/framework/css-framework.css" rel="stylesheet" type="text/css" />
	<link href="/css-framework-standalone/framework/layout-global.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="/css-framework-standalone/framework/jetendo-init.js"></script>
	<script type="text/javascript" src="/css-framework-standalone/framework/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="/css-framework-standalone/framework/jquery.cycle2.js"></script>
	<script type="text/javascript" src="/css-framework-standalone/framework/jquery.cycle2.swipe.min.js"></script> 
	
	<!-- place your custom css in these files -->
	<link href="#request.currentPath#/stylesheets/style.css" rel="stylesheet" type="text/css" />
	#arrayToList(request.stylesheets, ",")#
</head>

<body>
<header class="header z-index-2">
	<div class="header-container ">
		<div class="z-container">
			<!-- Custom Header -->
			Logo/header
			<div class="main-menu z-ft-18 z-hide-at-992">
				<!-- Custom Menu -->
				Menu Links
				<!-- like this maybe
				<ul>
					<li><a href="##">Link</a></li>
					<li><a href="##">Link</a></li>
					<li><a href="##">Link</a></li>
					<li><a href="##">Link</a></li>
					<li><a href="##">Link</a></li>
				</ul> -->
			</div>
		</div>
	</div>
	<!-- Mobile Menu -->
	<div class="mobile-menu">
		<a href="##" class="z-mobileMenuButton">&##9776; Menu</a>
		<div id="myMenu1" class="z-mobileMenuDiv z-mobileMenuTranslateXLeftOffscreen" data-column-gap="30" data-open-class="z-mobileMenuTranslateX">
			<div class="z-h-30 z-show-at-767">Menu</div>
			<!-- don't use ul/li for mobile menu! -->
			<nav class="z-center-children">
				<div><a href="##">Link</a></div>
				<div><a href="##">Link</a></div>
				<div><a href="##">Link</a></div>
				<div><a href="##">Link</a></div>
				<div><a href="##">Link</a></div>
				<div><a href="##">Link</a></div>
			</nav>
		</div>
	</div>
</header>
</cffunction>

<cffunction name="footer" localmode="modern" access="public">
	<cfscript>
	</cfscript>

<footer class="footer z-pv-20">
	<div class="z-container z-center-children">
		<div class="footer-logo z-1of5 z-pv-0 z-text-center z-fluid-at-992">
			Logo
		</div>
		<div class="z-1of5 z-ft-18 z-pv-0">  
			<a href="##">Link</a> 
		</div>
		<div class="z-1of5 z-ft-18 z-pv-0">  
			<a href="##">Link</a> 
		</div>
		<div class="z-1of5 z-ft-18 z-pv-0">  
			<a href="##">Link</a> 
		</div>
		<div class="footer-address z-1of5 z-ft-14 z-pv-0">
			<p><strong>Company</strong></p>
			<p>Address<br />
				Phone: (123) 555-1234<br />
				Fax: (123) 555-1234<br />
				<a href="##" style="text-decoration: underline;">Contact Us</a>
			</p>
		</div>
	</div>
</footer>
<footer class="copyright z-pv-10">
	<div class="z-container">
		<div class="z-column z-t-16">
			<div class="z-1of2">
				Copyright  #year(now())# Company. All Rights Reserved.
			</div>
			<div class="z-1of2 z-text-right">
				Website by Zgraph, Inc. <a href="http://www.zgraph.com" target="_blank">Florida Web Design</a>
			</div>
		</div>
	</div>
</footer>

<!-- DO NOT modify the framework files.  They will need to be replaced periodically. -->
<script type="text/javascript" src="/css-framework-standalone/framework/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/css-framework-standalone/framework/jetendo.combined.js"></script>
<script type="text/javascript" src="/css-framework-standalone/framework/jquery.cycle2.js"></script>
<script type="text/javascript" src="/css-framework-standalone/framework/jquery.cycle2.swipe.min.js"></script> 

<!-- place your js in this file -->
<script type="text/javascript" src="#request.currentPath#/js/custom.js"></script>
	#arrayToList(request.scripts, ",")#
</body>
</html>
</cffunction>
</cfoutput>
</cfcomponent>