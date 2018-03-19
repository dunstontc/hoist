#!/bin/bash

sudo yum update && yum upgrade;

sudo yum groups install "Development Tools";

sudo yum -y install epel-release;

