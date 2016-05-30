<cfcomponent extends="layout">
<cfoutput>
<cffunction name="index" localmode="modern" access="remote">
	<cfscript>
	init();
	request.title="Subpage";
	arrayAppend(request.stylesheets, '<link rel="stylesheet" href="#request.currentPath#/stylesheets/subpage.css" type="text/css" />');
	// arrayAppend(request.scripts, '<script type="text/javascript" src="#request.currentPath#/js/custom-example.js"></script>');
	header();
	</cfscript>
	
<section class="page-title">
	<div class="z-container z-center-children">
		<h1>Subpage</h1>
	</div>
</section>

<section class="z-pv-40">
	<div class="z-container"> 
		<div class="z-1of3">Column 1</div>
		<div class="z-1of3">Column 2</div>
		<div class="z-1of3">Column 3</div>
	</div>
</section>
	
	<cfscript>
	footer();
	</cfscript>
</cffunction>


<cffunction name="detail" localmode="modern" access="remote">
	<cfscript>
	init();
	request.title="Detail";
	arrayAppend(request.stylesheets, '<link rel="stylesheet" href="#request.currentPath#/stylesheets/subpage.css" type="text/css" />');
	// arrayAppend(request.scripts, '<script type="text/javascript" src="#request.currentPath#/js/custom-example.js"></script>');
	header();
	</cfscript>
	
<section class="page-title">
	<div class="z-container z-center-children">
		<h1>Detail</h1>
	</div>
</section>

<section class="z-pv-40">
	<div class="z-container"> 
		<div class="z-1of3">Column 1</div>
		<div class="z-1of3">Column 2</div>
		<div class="z-1of3">Column 3</div>
	</div>
</section>
	
	<cfscript>
	footer();
	</cfscript>
</cffunction>
</cfoutput>
</cfcomponent>