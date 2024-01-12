---
title:  Door Server
year: 2023
external_url: https://github.com/reitermarkus/door-server
type: Software & Hardware
tags:
  - Home Automation
  - Internet of Things
  - Rust
  - PCB Design
---
<figure>
  <img src='{{ '/img/portfolio-door-server.jpg' | prepend: site.baseurl }}' alt='Door Server board' />
</figure>

As part of my home automation solution for door access, I had been using a [generic 8-channel relay board](https://www.waveshare.com/rpi-relay-board-b.htm) and a Raspberry Pi. The “Door Server” software is written in Rust which implements each individual door as a [WebThings](https://webthings.io) device. It also includes a garage door button and an LED status indicator.

In order to reduce cable clutter, I decided to replace the generic board with a custom-designed PCB containing 8 relays, inputs for door contacts and a garage door button, as well as outputs for the LED status indicator. All of this fits in the same form factor as the original 8-channel relay board.

<!--more-->


<figure>
  <img src='{{ '/img/portfolio-door-server-before.jpg' | prepend: site.baseurl }}' alt='Door Server with generic 8-channel relay board' />  
</figure>
