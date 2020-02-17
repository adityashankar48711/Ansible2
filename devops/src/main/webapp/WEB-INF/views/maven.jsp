<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Maven</title>
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
<img src="https://res.cloudinary.com/mahenrique94/image/upload/v1549720017/trabalhando-com-diferentes-perfis-no-maven_l8mvbg.jpg" alt="DevOps" style="width:10%">
<main id="bodyColumn" class="span10">
<section>
<h2><a name="Introduction"></a>Introduction</h2><!--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
Maven, a [Yiddish word](https://en.wikipedia.org/wiki/Maven) meaning
*accumulator of knowledge*, began as an attempt to
simplify the build processes in the Jakarta Turbine project. There were
several projects, each with their own Ant build files, that were all
slightly different. JARs were checked into CVS. We wanted a standard
way to build the projects, a clear definition of what the project
consisted of, an easy way to publish project information and a way to
share JARs across several projects.

<p>The result is a tool that can now be used for building and managing any Java-based project. We hope that we have created something that will make the day-to-day work of Java developers easier and generally help with the comprehension of any Java-based project.</p></section><section>
<h2><a name="Maven.E2.80.99s_Objectives"></a>Maven’s Objectives</h2>
<p>Maven’s primary goal is to allow a developer to comprehend the complete state of a development effort in the shortest period of time. In order to attain this goal, there are several areas of concern that Maven attempts to deal with:</p>
<ul>

<li>Making the build process easy</li>
<li>Providing a uniform build system</li>
<li>Providing quality project information</li>
<li>Providing guidelines for best practices development</li>
<li>Allowing transparent migration to new features</li>
</ul><section>
<h3><a name="Making_the_build_process_easy"></a>Making the build process easy</h3>
<p>While using Maven doesn’t eliminate the need to know about the underlying mechanisms, Maven does provide a lot of shielding from the details.</p></section><section>
<h3><a name="Providing_a_uniform_build_system"></a>Providing a uniform build system</h3>
<p>Maven allows a project to build using its project object model (POM) and a set of plugins that are shared by all projects using Maven, providing a uniform build system. Once you familiarize yourself with how one Maven project builds you automatically know how all Maven projects build saving you immense amounts of time when trying to navigate many projects.</p></section><section>
<h3><a name="Providing_quality_project_information"></a>Providing quality project information</h3>
<p>Maven provides plenty of useful project information that is in part taken from your POM and in part generated from your project’s sources. For example, Maven can provide:</p>
<ul>

<li>Change log document created directly from source control</li>
<li>Cross referenced sources</li>
<li>List of mailing lists managed by the project</li>
<li>Dependency list</li>
<li>Unit test reports including coverage</li>
</ul>
<p>As Maven improves the information set provided will improve, all of which will be transparent to users of Maven.</p>
<p>Other products can also provide Maven plugins to allow their set of project information alongside some of the standard information given by Maven, all still based on the POM.</p></section><section>
<h3><a name="Providing_guidelines_for_best_practices_development"></a>Providing guidelines for best practices development</h3>
<p>Maven aims to gather current principles for best practices development, and make it easy to guide a project in that direction.</p>
<p>For example, specification, execution, and reporting of unit tests are part of the normal build cycle using Maven. Current unit testing best practices were used as guidelines:</p>
<ul>

<li>Keeping test source code in a separate, but parallel source tree</li>
<li>Using test case naming conventions to locate and execute tests</li>
<li>Having test cases setup their environment instead of relying on customizing the build for test preparation</li>
</ul>
<p>Maven also aims to assist in project workflow such as release and issue management.</p>
<p>Maven also suggests some guidelines on how to layout your project’s directory structure. Once you learn the layout you can easily navigate any other project that uses Maven and the same defaults.</p></section><section>
<h3><a name="Allowing_transparent_migration_to_new_features"></a>Allowing transparent migration to new features</h3>
<p>Maven provides an easy way for Maven clients to update their installations so that they can take advantage of any changes that have been made to Maven itself.</p>
<p>Installation of new or updated plugins from third parties or Maven itself has been made trivial for this reason.</p></section></section><section>
<h2><a name="What_is_Maven_Not.3F"></a>What is Maven Not?</h2>
<p>You may have heard some of the following things about Maven:</p>
<ul>

<li>Maven is a site and documentation tool</li>
<li>Maven extends Ant to let you download dependencies</li>
<li>Maven is a set of reusable Ant scriptlets</li>
</ul>
<p>While Maven does these things, as you can read above in the “What is Maven?” section, these are not the only features Maven has, and its objectives are quite different.</p>
<p>Maven does encourage best practices, but we realise that some projects may not fit with these ideals for historical reasons. While Maven is designed to be flexible, to an extent, in these situations and to the needs of different projects, it can not cater to every situation without making compromises to the integrity of its objectives.</p>
<p>If you decide to use Maven and have an unusual build structure that you cannot reorganise, you may have to forgo some features or the use of Maven altogether.</p></section>
        </main>
</body>
</html>