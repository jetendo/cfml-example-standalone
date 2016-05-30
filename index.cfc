<cfcomponent extends="layout">
<cfoutput>
<cffunction name="index" localmode="modern" access="remote">
	<cfscript>
	init();
	request.title="Home";
	arrayAppend(request.stylesheets, '<link rel="stylesheet" href="#request.currentPath#/stylesheets/subpage.css" type="text/css" />');
	// arrayAppend(request.scripts, '<script type="text/javascript" src="#request.currentPath#/js/custom-example.js"></script>');
	header();
	</cfscript>


<!-- Slideshow example -->
<section class="slider z-index-1">
	<div>
		<!-- If you need to use div instead of img, be sure to change >img to >div in data-cycle-slides=">img" below -->
		<div id="slideshowHomeDiv1" data-cycle-progressive="##homePhotoSlides1" data-cycle-swipe="true" data-cycle-swipe-fx="scrollHorz" data-cycle-log="false" data-cycle-slides=">img">
		<!-- The first image goes here -->
			<img src="" alt="" style="max-width:100%; width: 100%;" /> 
		</div>
		
		<!-- 
		All other images here separated by -~- 
		-->
		<script id="homePhotoSlides1" type="text/cycle" data-cycle-split="-~-">
			<img src="" alt="" style="max-width:100%; width: 100%;" />
			-~-
			<img src="" alt="" style="max-width:100%; width: 100%;" />
		</script>
	</div>
</section>

<section class="page-title">
	<div class="z-container z-center-children">
		<h1>Title</h1>
	</div>
</section>

<section class="z-pv-40">
	<div class="z-container"> 
		<div class="z-1of3">Column 1</div>
		<div class="z-1of3">Column 2</div>
		<div class="z-1of3">Column 3</div>
	</div>
</section>

<!-- add more sections -->
	<cfscript>
	footer();
	</cfscript>
</cffunction>
</cfoutput>
</cfcomponent>