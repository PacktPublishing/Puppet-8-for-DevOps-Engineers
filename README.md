# Puppet 8 for DevOps Engineers

<a href="https://www.packtpub.com/product/puppet-8-for-devops-engineers/9781803231709?utm_source=github&utm_medium=repository&utm_campaign="><img src="https://content.packt.com/B18492/cover_image_small.jpg" alt="" height="256px" align="right"></a>

This is the code repository for [Puppet 8 for DevOps Engineers](https://www.packtpub.com/product/puppet-8-for-devops-engineers/9781803231709?utm_source=github&utm_medium=repository&utm_campaign=), published by Packt.

**Automate your infrastructure at an enterprise scale**

## What is this book about?

This book covers the following exciting features:
* Find out how to structure Puppet code and data to scale and be secure
* Discover the core components of the Puppet platform and how to achieve performance
* Get to grips with classifying infrastructure and deploying code for different environments
* Understand how Bolt can provide procedural orchestration alongside Puppet code
* Use Puppet’s integrations and Forge modules that allow Puppet to integrate with other systems
* Adopt approaches to adoption to ensure your Puppet implementation will succeed in regulated environments, the cloud, and with change control

If you feel this book is for you, get your [copy](https://www.amazon.com/dp/180323170X) today!

<a href="https://www.packtpub.com/?utm_source=github&utm_medium=banner&utm_campaign=GitHubBanner"><img src="https://raw.githubusercontent.com/PacktPublishing/GitHub/master/GitHub.png" 
alt="https://www.packtpub.com/" border="5" /></a>

## Instructions and Navigations
All of the code is organized into folders. For example, ch02.

The code will look like the following:
```
hierarchy:
- name: "YAML layers"
  paths:
   - "nodes/%{trusted.certname}.yaml"
   - "location/%{fact.data_center}.yaml"
   - "common.yaml"
```

**Following is what you need for this book:**
This book is for DevOps engineers looking to automate infrastructure with Puppet as a configuration management tool. It will allow both beginners and current Puppet users to understand the full power of the Puppet language and platform. A basic understanding of Unix system administration and Windows systems and core development concepts such as revision control tools like git, virtualization, testing, and coding tooling like vi or Visual Studio code is a prerequisite.

With the following software and hardware list you can run all code files present in the book (Chapter 1-15).
### Software and Hardware List
| Software/hardware covered in the book | Operating system requirements |
| ------------------------------------ | ----------------------------------- |
| Puppet 7 or 8 | Windows, macOS, or Linux |
| Bolt | Windows, macOS, or Linux |
| Visual Studio Code | Windows, macOS, or Linux |
| Azure |  |
| Puppet Development Kit (PDK) | Windows, macOS, or Linux |
| The PEADM module | Windows, macOS, or Linux |

We also provide a PDF file that has color images of the screenshots/diagrams used in this book. [Click here to download it](https://packt.link/vPsXh).

## Errata
Page 7: the code example has two typos: <br>
* line 2: ```uid => '1234'.``` should instead be ```uid => '1234',``` <br>
* line 7: ```Gid => '123'``` should instead be ```gid => '123'```


### Related products
* Learning DevOps - Second Edition [[Packt]](https://www.packtpub.com/product/learning-devops-second-edition/9781801818964?utm_source=github&utm_medium=repository&utm_campaign=9781801818964) [[Amazon]](https://www.amazon.com/dp/1801818967)

* Go for DevOps [[Packt]](https://www.packtpub.com/product/go-for-devops/9781801818896?utm_source=github&utm_medium=repository&utm_campaign=9781801818896) [[Amazon]](https://www.amazon.com/dp/1801818894)

## Get to Know the Author
**David Sandilands**
<br>David focuses on the product management of Puppet’s development ecosystem and integrations. This includes management of the Forge, supported modules, Puppet Developer Kit and integrations such as ServiceNow and Splunk. Before this, he worked within Puppet’s Solutions Architect team where he helped Puppet’s largest customers deliver infrastructure automation at scale and supported these customers DevOps working practices. He spent eight years at NatWest as a Cloud Infrastructure Engineer delivering their IaaS Platform. David has a passion for delivering change into traditional working environments, breaking down team silos, and integrating DevOps working practices within heavily regulated and audited environments. David is a keen hillwalker, enjoys sci-fi and fantasy books and regularly visits most of Scotland's tractor parks with his wife and two sons.
