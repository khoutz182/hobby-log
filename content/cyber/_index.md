+++
title = "Lets Get Digital"
+++

Historically I've run arch as my main driver, however recently I've been getting into [NixOS](https://nixos.org/).
Immutable and declarative seem like good ideas for a setup, and overall it seems like a good thing. Don't go changing
partitions and not updating the generated `/etc/fstab` though cuz that's a headache. Good thing reinstalling is easy.

I use [home-manager](https://nix-community.github.io/home-manager/index.xhtml#sec-install-standalone) installed standalone as opposed
to as a nixos/darwin module. Conceptually it seems easier to keep the system and the user setup separate, but who knows, I may
change my mind about that later.
