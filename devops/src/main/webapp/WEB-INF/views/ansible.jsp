<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RedHat Ansible</title>
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
<img src="https://www.ansible.com/hubfs/Images/Red-Hat-Ansible_OG_1200x630.png" alt="DevOps" style="width:10%">
<div class="col-md-8">


        <div class="blog-post">
<h1>What is Ansible?</h1>
<p>Ansible is an open source automation platform. It is very, <a href="https://networklore.com/ansible-getting-started/">very simple to setup</a> and yet powerful. Ansible can help you with configuration management, application deployment, task automation. It can also do IT orchestration, where you have to run tasks in sequence and create a chain of events which must happen on several different servers or devices. An example is if you have a group of web servers behind a load balancer. Ansible can upgrade the web servers one at a time and while upgrading it can remove the current web server from the load balancer and disable it in your <a href="https://networklore.com/nagios/">Nagios monitoring system</a>. So in short you can handle complex tasks with a tool which is easy to use.</p>

<!--more-->

<p>Unlike Puppet or Chef it doesn’t use an agent on the remote host. Instead Ansible uses SSH which is assumed to be installed on all the systems you want to manage. Also it’s written in Python which needs to be installed on the remote host. This means that you don’t have to setup a client server environment before using Ansible, you can just run it from any of your machines and from the clients point of view there is no knowledge of any Ansible server (you can run Puppet in standalone mode, but Puppet still needs to be installed). There are some other requirements though, for example if you want to do something related to git on a remote machine a git package must first be installed on the remote machine.</p>

<p>Ansible is available for free and runs on Linux, Mac or BSD. Aside from the free offering, Ansible also has an enterprise product called <a href="http://www.ansible.com/tower">Ansible Tower</a>.</p>

<h3 id="the-first-tests">The first tests</h3>

<p>Once you have installed Ansible and added some hosts to the inventory file, typically /etc/ansible/hosts you can try to connect to your hosts. By default a connection will be made with ssh keys, but you can also specify a username and password.</p>

<p>A good first test is just to see if you can connect to your devices with the ping module.</p>

<div class="language-shell highlighter-rouge"><div class="highlight"><pre class="highlight"><code>ansible all <span class="nt">-m</span> ping
</code></pre></div></div>

<p>The “all” keyword is for all of the hosts in your inventory, to only target hosts in a specific group you enter the group name instead of all.</p>

<p><img src="https://networklore.com/images/2014/ansible-ping.png" alt="Ansible ping"></p>

<p>In the above example a connection is made using a user called <code class="highlighter-rouge">deploy</code>.</p>

<h3 id="oneliners">Oneliners</h3>

<p>While you are getting started with Ansible it’s easy to run several commands against a group of servers. If you want to update all our Debian machines you could run.</p>

<div class="language-shell highlighter-rouge"><div class="highlight"><pre class="highlight"><code>ansible all <span class="nt">-i</span> debian-hosts.txt <span class="nt">-m</span> raw <span class="nt">-a</span> <span class="s1">'DEBIAN_FRONTEND=noninteractive apt-get -qq -y upgrade'</span>
</code></pre></div></div>

<p>Here the <a href="http://docs.ansible.com/raw_module.html">raw module</a> is used to issue a command on all the servers in our debian-hosts.txt file. Another module you will want to try out early is the setup module which gives you information about remote machines.</p>

<p><img src="https://networklore.com/images/2014/ansible-setup-output.png" alt="Ansible setup output"></p>

<p>You can use all of the variables found in the setup module to customize what you do with the remote servers.</p>

<h3 id="ansible-playbooks">Ansible Playbooks</h3>

<p>The real strength of Ansible lies in its Playbooks. A playbook is like a recipe or an instructions manual which tells Ansible what to do when it connects to each machine. Playbooks are written in YAML, which simplistically could be viewed as XML but human readable. When I started using Ansible I’d never looked at YAML, but within hours I was able to write powerful playbooks. Also there are a lot of <a href="https://github.com/ansible/ansible-examples">examples</a> online to help you while you learn.</p>

<p>You could have a Playbook which configures your servers according to a baseline you have defined, so they all are using the correct sshd config and central authentication. Then you use roles for specific server groups. Say you have a groups for web servers, database servers and monitoring servers. Then you decide to add a web server. When you fire off your Playbook, Ansible will install and configure the web server. It will make sure your database server allows connections from the new server, and then add the new server to your network monitoring solution so that you are informed if the server suffers a failure in the future.</p>

<h3 id="ansible-for-network-devices">Ansible for network devices</h3>

<p>Before Ansible has propper support for network devices I wrote some proof of concept code which <a href="https://networklore.com/ansible-cisco-snmp/">configured IOS devices using SNMP</a>. Since Ansible 2.1, there’s quite extensive networking support as part of the product. So now it’s no problems to <a href="https://networklore.com/ansible-ios-upgrade/">manage network devices</a> with Ansible. The core networking modules within Ansible are all tied to specific platforms. For example theres a <a href="https://networklore.com/ansible-ios_config/">ios_config module</a> to configure Cisco IOS devices, for Juniper the module would be junos_config and so on. You can also use the <a href="https://networklore.com/napalm-introduction/">Napalm library</a> from Ansible to automate your network.</p>

</div>

        </div>
</body>
</html>