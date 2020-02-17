<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Docker</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="/">
    <img src="https://miro.medium.com/max/3964/1*AwvDJDfErlD34ox2QpwGoA.png" alt="logo" style="width:40px;">
  </a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="devops">DevOps</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="tools">Tools</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="developer">Developer</a>
    </li>
  </ul>
</nav>
<img src="https://cdn-media-1.freecodecamp.org/images/0*mgaoUlIJzr502lhY.jpg" alt="DevOps" style="width:10%">
<main class="col-content content">
						<section class="section">
							
								
							<h1 id="title">About Docker Engine</h1>  <span class="reading-time" title="Estimated reading time">
  <span class="reading-time-label">Estimated reading time: </span>
  
  
    3 minutes
  
</span>

							
							
							<p><strong>Develop, Ship and Run Any Application, Anywhere</strong></p>

<p><a href="https://www.docker.com"><strong>Docker</strong></a> is a platform for developers and sysadmins
to develop, ship, and run applications.  Docker lets you quickly assemble
applications from components and eliminates the friction that can come when
shipping code. Docker lets you get your code tested and deployed into production
as fast as possible.</p>

<p>Docker consists of:</p>

<ul>
  <li>The Docker Engine - our lightweight and powerful open source containerization
technology combined with a work flow for building and containerizing your
applications.</li>
  <li><a href="https://hub.docker.com">Docker Hub</a> - our SaaS service for
sharing and managing your application stacks.</li>
</ul>

<h2 id="why-docker">Why Docker?</h2>

<p><em>Faster delivery of your applications</em></p>

<ul>
  <li>We want your environment to work better. Docker containers,
    and the work flow that comes with them, help your developers,
    sysadmins, QA folks, and release engineers work together to get your code
    into production and make it useful. We’ve created a standard
    container format that lets developers care about their applications
    inside containers while sysadmins and operators can work on running the
    container in your deployment. This separation of duties streamlines and
    simplifies the management and deployment of code.</li>
  <li>We make it easy to build new containers, enable rapid iteration of
    your applications, and increase the visibility of changes. This
    helps everyone in your organization understand how an application works
    and how it is built.</li>
  <li>Docker containers are lightweight and fast! Containers have
    sub-second launch times, reducing the cycle
    time of development, testing, and deployment.</li>
</ul>

<p><em>Deploy and scale more easily</em></p>

<ul>
  <li>Docker containers run (almost) everywhere. You can deploy
    containers on desktops, physical servers, virtual machines, into
    data centers, and up to public and private clouds.</li>
  <li>Since Docker runs on so many platforms, it’s easy to move your
    applications around. You can easily move an application from a
    testing environment into the cloud and back whenever you need.</li>
  <li>Docker’s lightweight containers also make scaling up and
    down fast and easy. You can quickly launch more containers when
    needed and then shut them down easily when they’re no longer needed.</li>
</ul>

<p><em>Get higher density and run more workloads</em></p>

<ul>
  <li>Docker containers don’t need a hypervisor, so you can pack more of
    them onto your hosts. This means you get more value out of every
    server and can potentially reduce what you spend on equipment and
    licenses.</li>
</ul>

<p><em>Faster deployment makes for easier management</em></p>

<ul>
  <li>As Docker speeds up your work flow, it gets easier to make lots
    of small changes instead of huge, big bang updates. Smaller
    changes mean reduced risk and more uptime.</li>
</ul>

<h2 id="about-this-guide">About this guide</h2>

<p>The <a href="https://docs.docker.com/engine/understanding-docker/">Understanding Docker section</a> helps you:</p>

<ul>
  <li>See how Docker works at a high level</li>
  <li>Understand the architecture of Docker</li>
  <li>Discover Docker’s features;</li>
  <li>See how Docker compares to virtual machines</li>
  <li>See some common use cases.</li>
</ul>

<h3 id="installation-guides">Installation guides</h3>

<p>The <a href="https://docs.docker.com/engine/installation/">installation section</a> shows you how to install Docker
on a variety of platforms.</p>

<h3 id="docker-user-guide">Docker user guide</h3>

<p>To learn about Docker in more detail and to answer questions about usage and
implementation, check out the <a href="https://docs.docker.com/engine/userguide/">Docker User Guide</a>.</p>

<h2 id="release-notes">Release notes</h2>

<p>A summary of the changes in each release in the current series can now be found
on the separate <a href="https://docs.docker.com/release-notes">Release Notes page</a></p>

<h2 id="feature-deprecation-policy">Feature Deprecation Policy</h2>

<p>As changes are made to Docker there may be times when existing features
need to be removed or replaced with newer features. Before an existing
feature is removed it is labeled as “deprecated” within the documentation
and remains in Docker for at least 3 stable releases unless specified
explicitly otherwise. After that time it may be removed.</p>

<p>Users are expected to take note of the list of deprecated features each
release and plan their migration away from those features, and (if applicable)
towards the replacement features as soon as possible.</p>

<p>The complete list of deprecated features can be found on the
<a href="https://docs.docker.com/engine/deprecated/">Deprecated Features page</a>.</p>

<h2 id="licensing">Licensing</h2>

<p>Docker is licensed under the Apache License, Version 2.0. See
<a href="https://github.com/moby/moby/blob/master/LICENSE">LICENSE</a> for the full
license text.</p>

							<!-- tags -->
							
							
							
							<span class="glyphicon glyphicon-tags" style="padding-right: 10px"></span><span style="vertical-align: 2px"><a href="https://docs.docker.com/search/?q=Engine">Engine</a></span>
							
							<!-- link corrections -->
              <script language="JavaScript">
							var x = document.links.length;
							var baseHref = document.getElementsByTagName('base')[0].href
							for (i = 0; i < x; i++) {
							  var munged = false;
							  var thisHREF = document.links[i].href;
							  var originalURL = "/engine/";
							  if (thisHREF.indexOf(baseHref + "#") > -1) {
							    // hash fix
							    //console.log('BEFORE: base:',baseHref,'thisHREF:',thisHREF,'originalURL:',originalURL);
							    thisHREF = originalURL + thisHREF.replace(baseHref, "");
							    //console.log('AFTER: base:',baseHref,'thisHREF:',thisHREF,'originalURL:',originalURL);
							  }
							  if ((thisHREF.indexOf(window.location.hostname) > -1 || thisHREF.indexOf('http') == -1) && document.links[i].className.indexOf("nomunge") < 0) {
							    munged = true;
							    thisHREF = thisHREF.replace(".md", "/").replace("/index/", "/");
							    document.links[i].setAttribute('href', thisHREF);
							  }
							}
							</script>
							
						  <div id="ratings-div" style="color: rgb(185, 194, 204); text-align: center; margin-top: 150px; visibility: visible;">
								<div id="pd_rating_holder_8453675" style="display: inline-block;"><div class="rating-msg" id="PDRTJS_8453675_msg" style="text-align: center; font:normal normal 12px/20px verdana; color: #333333;">Rate this page:</div><p style="padding: 0px; margin: 0px; clear: both;"></p><div class="rating-icons" id="pd_rate_8453675" style="float:left;"><div class="rating-nero-icon" onmouseout="PDRTJS_8453675.rebuild();" onclick="PDRTJS_8453675.rate(1);" onmouseover="PDRTJS_8453675.hover(1);" id="PDRTJS_8453675_nero_1" style="background-size: 32px 32px !important; cursor: pointer; width: 16px; height: 16px;  line-height: 16px; background: url(https://polldaddy.com/images/ratings/nero-hand-sml@2x.png) bottom left; float: left; padding: 0px; margin: 0px; margin: 0px;">&nbsp;</div><div class="rating-nero-value" id="PDRTJS_8453675_msg_1" style="text-align: center; font:normal normal 12px/20px verdana; color: #333333; float:left; padding: 0px 4px;">40</div><div class="rating-nero-icon" onmouseout="PDRTJS_8453675.rebuild();" onclick="PDRTJS_8453675.rate(2);" onmouseover="PDRTJS_8453675.hover(2);" id="PDRTJS_8453675_nero_2" style="background-size: 32px 32px !important; cursor: pointer; width: 16px; height: 16px;  line-height: 16px; background: url(https://polldaddy.com/images/ratings/nero-hand-sml@2x.png) bottom right; float: left; padding: 0px; margin: 0px; margin: 0px;">&nbsp;</div><div class="rating-nero-value" id="PDRTJS_8453675_msg_2" style="text-align: center; font:normal normal 12px/20px verdana; color: #333333; float:left; padding: 0px 4px;">15</div></div><span style="float:left;">&nbsp;</span><div id="rating_info_8453675" style="display: block; float: left; background: url(&quot;https://polldaddy.com/images/ratings/info@2x.png&quot;) 3px 2px / 12px 12px no-repeat; width: 16px; height: 16px; cursor: pointer;" onclick="javascript:PDRTJS_8453675.togglePopup();return false;"><span style="display:none;">i</span></div><div class="pd_popup_holder" id="pd_popup_holder_8453675">&nbsp;</div></div>
								<script type="text/javascript">
									PDRTJS_settings_8453675 = {
										"id": "8453675",
										"unique_id": "engine/index.md",
										"title": "About Docker Engine",
										"permalink": "https://github.com/docker/docker.github.io/blob/master/engine/index.md"
									};
									(function(d, c, j) {
										if (!document.getElementById(j)) {
											var pd = d.createElement(c),
												s;
											pd.id = j;
											pd.src = ('https:' == document.location.protocol) ? 'https://polldaddy.com/js/rating/rating.js' : 'http://i0.poll.fm/js/rating/rating.js';
											s = document.getElementsByTagName(c)[0];
											s.parentNode.insertBefore(pd, s);
										}
									}(document, 'script', 'pd-rating-js'));
								</script>
							</div>
							
						</section>
					</main>
</body>
</html>