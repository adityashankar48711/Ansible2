<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jfrog Artifactory</title>
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
<h3>Jfrog Artifactory</h3>
<img src="https://i0.wp.com/foxutech.com/wp-content/uploads/2018/09/What-is-Jfrag-Artifactory.png?fit=1250%2C415&ssl=1" alt="DevOps" style="width:10%">
<div class="post-text" itemprop="text">
        <p><a href="https://www.jfrog.com/artifactory/" rel="noreferrer">Artifactory</a> is a product by JFrog that serves as a <a href="https://en.wikipedia.org/wiki/Binary_repository_manager" rel="noreferrer">binary repository manager</a>.  That said very often one will use a 'artifactory' as a synonym of the more general binary repository, much like many people use Frigidaire or fridge to denote the refrigerator regardless if it is a Frigidaire brand or not.</p>

<p>The binary repository is a natural extension to the source code repository, in that it will store the outcome of your build process, often denoted as artifacts.  Most of the times one would not use the binary repository directly but through a package manager that comes with the chosen technology.</p>

<p>In most cases these will store individual application components that can later be assembled into a full product - thus allowing a build to be broken in smaller chunks, making more efficient use of resources, reducing build times, better tracking of binary debug databases etc.</p>

<p>Here are some of the most popular package managers that can be managed using a binary repository:</p>

<ul>
<li>Java: jar, ear, war etc has <a href="https://maven.apache.org/" rel="noreferrer">Maven</a> and the official <a href="https://search.maven.org/" rel="noreferrer">MavenCentral</a>.  There are many other package managers that will use the maven binary repository format as well (<a href="http://ant.apache.org/ivy/" rel="noreferrer">ivy</a>, <a href="https://gradle.org/" rel="noreferrer">gradle</a> etc).</li>
<li>.Net: <a href="https://www.nuget.org/" rel="noreferrer">nuget</a> for .NET components (DLL and EXE) but can also be used as a distribution mechanism under windows thorugh systems like <a href="https://chocolatey.org/" rel="noreferrer">Chocolatey</a>.  Newer versions of Powershell can also leverage this to distribute powershell modules though the <a href="https://www.powershellgallery.com/" rel="noreferrer">powershell gallery</a> of which one could build a local distribution with a binary repository and a repository in nuget format.  Also check <a href="https://github.com/OneGet/oneget" rel="noreferrer">OneGet</a> if Windows distribution management is of interest to you.</li>
<li>In JavaScript: we have <a href="https://www.npmjs.com/" rel="noreferrer">npm</a> which is one of the most popular, will require <a href="https://nodejs.org/en/" rel="noreferrer">nodejs</a>.</li>
<li>In python: there is <a href="https://pypi.python.org/pypi/pip" rel="noreferrer">pip</a> and the official package index <a href="https://pypi.python.org/pypi" rel="noreferrer">pypi</a>, which one can also create a local instance through binary repository that will support the format.</li>
</ul>

<p>This list is far from complete, just gives an idea of what's out there.</p>

<p>The binary repository can allow to host all of these under one roof, making their management much simpler for teams.  Note that you do not need a very large team to start reaping benefits from binary package management.  The initial investment is not very large and the benefits are felt immediately.  Especially now that more and more platforms, frameworks and languages are integrating this dependency management directly in them.
Their biggest advantage I have found however was to create an environment that your programmers will find natural and comfortable making it essential.  It helps you as a devops creating a solid tool-chain and it helps them making the overall experience fit naturally in their stack of choice.</p>

<p>As I said earlier there are <a href="https://en.wikipedia.org/wiki/List_of_software_package_management_systems" rel="noreferrer">many products</a> out there that can serve as binary package managers, some more generic than others in their target usage, varying also widely in their accessibility and prices.</p>

<p>My personal opinion is that binary repositories are as vital a part of a well designed devops setup as the source code repository or continuous integration.</p>
    </div>
</body>
</html>