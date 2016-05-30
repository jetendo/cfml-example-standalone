Developing using the Lucee application server

Some basic Coldfusion (CFML) language learning is needed in order to be able to integrate data into the HTML.  We suggest reading the manual, and taking time to learn the language.   It is more similar to javascript then php syntax plus there is a tag language which is commonly used when integrating data with lots of HTML.

You must use windows for these files.  If you have a Mac, please contact us for a separate set of files.

Please move the lucee-express directory to C:\ServerData\lucee-express.  The rest of the documentation will assume it is in this location.

Run startup.bat
Leave the command prompt window open while you work.  It is a web application server.
Visit http://localhost:8488/
You will see a Lucee welcome page if the dynamic request worked.

We've already included the standalone css framework and initial files needed to start a project.

An example project is included here:
http://localhost:8488/cfml-example-standalone/subpage.cfc?method=index

Explanation of URL Structure:
	"cfml-example-standalone" is a directory C:\ServerData\lucee-express\webapps\ROOT\cfml-example-standalone
	"subpage.cfc" is a ColdFusion Component
	"method=subpage" calls the "index" function in the "subpage.cfc" component.
	
	You can make more then one function per CFC file and change the method to the name of that function.  Example:
	
	http://localhost:8488/cfml-example-standalone/subpage.cfc?method=detail
	
	Don't want debugging enabled? Go to the lucee server admin
	http://localhost:8488/lucee/admin/server.cfm
	password: 3292hay
	
	Click on debugging templates, and delete the Debug / modern template.
	
Explanation of CFC Structure:
	For custom landing pages, we've made a CFC that extends layout.cfc.
	
	Layout.cfc init function is a place to setup variables that are available to other parts of the current request.  You can see we set several variables in the request scope here.
	
	The index.cfc, and subpage.cfc files, you can see they are set to call init(), header() and footer() which exist in layout.cfc.
	
	If you want to type a literal # pound sign, you will need to type it twice when it is between <cfoutput> </cfoutput> tags, because the # pound sign is the way you output a variable in CFML.
	
Creating a new project.
	It is recommended to start by copying the C:\ServerData\lucee-express\webapps\ROOT\cfml-example-standalone directory and rename it to the name of the client, with no periods or other punctuation.
	
	Then change the request.currentPath in layout.cfc to match the new directory name; Example:
		request.currentPath="/clientname";
	
	Then create all the CFC, html, js, css first so that you have a working HTML version of the project with all the examples included.
	
	After all the code is made to match the design, begin to convert your files to use the debug data from the CFML arrays and structures.
	
	We recommend starting on data integration by using the "display code" generated from Jetendo's Site Manager for each custom data type or with the code samples we provide.
	
	Some pages are integrating with a real estate or custom database and they won't have a "display code" feature because we have to use other methods in Jetendo to integrate instead.  We will let you know about these each time so that you can skip over them.   
	
Tools
	We have a set of tools in Jetendo (our custom CMS) that allows the developer to create complex forms with data relationships without programming.
	These forms can be used for lead capture, for unique landing pages, or for records that are used across many pages.
	Although it is similar to Advanced Custom Fields (ACF) in wordpress, our system has a lot more automated built in to allow this to be used in many ways, and to reduce the cost of building web sites.
	We might give you access to this tool in the future and ask you to build the forms and data needed in order to make dynamic data feed into your HTML. 
	
	This same tool is able to generate CFML code to eliminate the need to write boilerplate database/loop/field output code.
	We have upgraded this tool to be able to generate working CFCs for the standalone framework.
	We plan on provide URL/logins or a set of CFCs in advance, so that you can start from CFML code that has the exact field names and structure that we expect.
	
	We are also re-creating every widget/section layout variation from the past work on top of the CSS Framework in bulk, and making it easy to browse & copy/paste the code examples.
	We expect to be able to allow sites to be made by copying several examples into the generated CFC, and then doing a reduced amount of customization.
	We are building these code examples to work well together and have all the responsive behavior built-in.
	
	Jetendo including the standalone css framework project are released as free open source software.  Our client data & unique client designs are closed source/proprietary.
	
	We encourage your participation in adding to the library of html/css/js code examples so that we have generic re-usable elements.
	
	We may further build another layer of automation around these examples later so that forms are used to customizing them instead of programming.
