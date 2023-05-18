#!/bin/bash
bolt module install --no-resolve 
bolt --verbose plan run pecdm::provision project=packtlab ssh_user=centos provider=azure architecture=standard node_count=1 firewall_allow='[ "0.0.0.0/0" ]' version=2021.4.0 cloud_region=uksouth