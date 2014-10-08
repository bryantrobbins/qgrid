qgrid
=====

A Vagrant-backed Selenium Grid with support for Windows nodes

NOTE: Until the creation of the Windows box is scripted from externally available images, you'll need to get a custom image from me. Please email bryantrobbins@gmail.com. The image is currently created BY HAND (boooo) from Microsoft's publicly available modern.ie VMs plus some additonal freeware utilities (cygwin, ssh, wget, fart.exe, Selenium, etc.). However, I don't believe it would be OK to share the custom image.

One of the first orders of business must be to use something like Packer to create a good Windows slave box.
