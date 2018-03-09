# Make

## Resources
- [Makeheads101: Makefiles for Dummies](Makeheads101: Makefiles for Dummies)

## Red Hat Enterprise Linux
```sh
# First clean up everything - open a terminal and execute the following commands :
sudo subscription-manager remove --all
sudo subscription-manager unregister
sudo subscription-manager clean

# Now re-register the system, attach the subscriptions - execute these commands :
sudo subscription-manager register
sudo subscription-manager refresh
sudo subscription-manager attach --auto

# Here are the commands to see which repos are enabled and what can be added :
# sudo subscription-manager repos --list-enabled to see all actually enabled subscriptions.
# sudo subscription-manager repos --list to see all subscriptions that are available for you.
# sudo subscription-manager repos --enable <repo> if you want to add additional repos.
```

> Total                                            1.8 MB/s | 780 MB  07:07     
> Retrieving key from file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
> Importing GPG key 0xFD431D51:
>  Userid     : "Red Hat, Inc. (release key 2) <security@redhat.com>"
>  Fingerprint: 567e 347a d004 4ade 55ba 8a5f 199e 2f91 fd43 1d51
>  Package    : redhat-release-server-7.2-9.el7.x86_64 (@anaconda/7.2)
>  From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
> Is this ok [y/N]: y
> Importing GPG key 0x2FA658E0:
>  Userid     : "Red Hat, Inc. (auxiliary key) <security@redhat.com>"
>  Fingerprint: 43a6 e49c 4a38 f4be 9abf 2a53 4568 9c88 2fa6 58e0
>  Package    : redhat-release-server-7.2-9.el7.x86_64 (@anaconda/7.2)
>  From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
> Is this ok [y/N]: y


### Red Hat:
```sh
# [clay@localhost etc]$ cat /etc/*elease
NAME="Red Hat Enterprise Linux Server"
VERSION="7.2 (Maipo)"
ID="rhel"
ID_LIKE="fedora"
VERSION_ID="7.2"
PRETTY_NAME="Red Hat Enterprise Linux"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:redhat:enterprise_linux:7.2:GA:server"
HOME_URL="https://www.redhat.com/"
BUG_REPORT_URL="https://bugzilla.redhat.com/"

REDHAT_BUGZILLA_PRODUCT="Red Hat Enterprise Linux 7"
REDHAT_BUGZILLA_PRODUCT_VERSION=7.2
REDHAT_SUPPORT_PRODUCT="Red Hat Enterprise Linux"
REDHAT_SUPPORT_PRODUCT_VERSION="7.2"
Red Hat Enterprise Linux Server release 7.2 (Maipo)
Red Hat Enterprise Linux Server release 7.2 (Maipo)
```

### CentOS:
```sh
[parallels@localhost] $ cat /etc/*elease
CentOS Linux release 7.4.1708 (Core) 
NAME="CentOS Linux"
VERSION="7 (Core)"
ID="centos"
ID_LIKE="rhel fedora"
VERSION_ID="7"
PRETTY_NAME="CentOS Linux 7 (Core)"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:centos:centos:7"
HOME_URL="https://www.centos.org/"
BUG_REPORT_URL="https://bugs.centos.org/"

CENTOS_MANTISBT_PROJECT="CentOS-7"
CENTOS_MANTISBT_PROJECT_VERSION="7"
REDHAT_SUPPORT_PRODUCT="centos"
REDHAT_SUPPORT_PRODUCT_VERSION="7"

CentOS Linux release 7.4.1708 (Core) 
CentOS Linux release 7.4.1708 (Core) 
```

### Fedora:
```sh
[clay@localhost ~]$ cat /etc/*elease
Fedora release 26 (Twenty Six)
NAME=Fedora
VERSION="26 (Workstation Edition)"
ID=fedora
VERSION_ID=26
PRETTY_NAME="Fedora 26 (Workstation Edition)"
ANSI_COLOR="0;34"
CPE_NAME="cpe:/o:fedoraproject:fedora:26"
HOME_URL="https://fedoraproject.org/"
BUG_REPORT_URL="https://bugzilla.redhat.com/"
REDHAT_BUGZILLA_PRODUCT="Fedora"
REDHAT_BUGZILLA_PRODUCT_VERSION=26
REDHAT_SUPPORT_PRODUCT="Fedora"
REDHAT_SUPPORT_PRODUCT_VERSION=26
PRIVACY_POLICY_URL=https://fedoraproject.org/wiki/Legal:PrivacyPolicy
VARIANT="Workstation Edition"
VARIANT_ID=workstation
Fedora release 26 (Twenty Six)
Fedora release 26 (Twenty Six)
```
