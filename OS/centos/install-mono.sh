#!/bin/bash
# https://www.mono-project.com/download/stable/#download-lin-centos

rpm --import "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF";
su -c 'curl https://download.mono-project.com/repo/centos7-stable.repo | tee /etc/yum.repos.d/mono-centos7-stable.repo';

# The package mono-devel should be installed to compile code.
# The package mono-complete should be installed to install everything - this should cover most cases of "assembly not found" errors.
# The package referenceassemblies-pcl should be installed for PCL compilation support - this will resolve most cases of "Framework not installed: .NETPortable" errors during software compilation.
# The package xsp should be installed for running ASP.NET applications.
sudo yum install \
    mono-devl \
    mono-complete \
    referenceassemblies-pcl \
    xsp;
