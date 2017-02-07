# Development Tools
Development and testing tools run from command line and interact directly with the hardware. The tools provide everything that one can do from the web intetrface.

## Structure
The code is copied and trimed down from what is used on the website backend, and is written in javascript. There are bash files that call the functions through nodejs and they make sure it is run with proper permissions and enough arguments.

## Installation

Install the required packages with 
```bash
npm install
```
As these intergrate with hardware on a raspberry pi, you will need to build/compile them on the Broadcom chip itself. After the install you should have a "node_modules" folder in the root project directory.

## Run

For example, to get the voltages and targets of all channels, run 

```bash
sudo ./voltageDump.sh
```
in the current directory.