# Make

## Resources
- [Makeheads101: Makefiles for Dummies](Makeheads101: Makefiles for Dummies)

## RHEL Setup
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

