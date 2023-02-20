# AT32F403A_407 Firmware Library with gcc and makefile support

This is AT32F403A_407 Firmware Library for AT32F403A and AT32F407 with gcc and makefile support.

It is forked from : https://github.com/ArteryTek/AT32F403A_407_Firmware_Library

And with below changes:
- add 'user' dir and led toggle sources to toggle led connect to PC13 of [WeAct BlackPill Board](https://github.com/WeActStudio/WeActStudio.BlackPill).
  + the source come from 'project/at_start_f403a/examples/gpio/led_toggle'.
- add 'Makefile' to build the led toggle demo.
- add this README.md

The default bsp sources is not build for this demo.

For other AT32F models, you can take this 'Makefile' as example to create your own 'Makefile'.

