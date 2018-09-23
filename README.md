# Flask Smart Frame

Set a custom background video, view the weather and stock prices.

![flask frame](https://i.imgur.com/mXVg5NMl.jpg)

## Table of Contents
- [Background](#background)
- [Getting Started](#get-started)
- [How it works](#how)
- [Hosting](#hosting)

## Background
For some time I wanted a "smart-monitor" application &mdash; a program that would show me the weather, stock prices, etc., and would feature a dynamic background, such as a Youtube video. This program would run on a raspberrypi and be displayed on an old monitor.

Initially, I modified the popular [Smart Mirror application](https://github.com/HackerShackOfficial/Smart-Mirror) for these purposes. Though the application worked fairly well, designing the interface with Python's Tkinter was less than fun. Given my limited experience with Tkinter, having a background video at this point was not an option so I opted for a changing background image, which was achieved using Python's `os` library to randomly shuffle through pictures in a directory named `/images`. 

The app worked fairly well, though I was desperately missing my bread and butter of HTML, CSS, and JavaScript. The issue was that I didn't feel like configuring Node on a raspberrypi &mdash; I wanted the application to be in Python.

It wasn't until I started tooling around with Flask that I found my solution, and thus the creation of the `flask-smart-frame`.

## Getting started
Here is how I used this application:

1. It is served on a Raspberrypi connected to a PC monitor.
2. Displayed full-screen in the Chromium browser.

## To Do
- Add user model
  - stock list
  - location (lat, lon)
  - YT embeds