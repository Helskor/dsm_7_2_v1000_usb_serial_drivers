# load needed modules
modprobe usbserial
modprobe ftdi_sio
modprobe cdc-acm

# get the modules and insert them
cd /lib/modules

sudo wget https://github.com/robertklep/dsm7-usb-serial-drivers/raw/main/modules/v1000/dsm-7.2/ch341.ko
sudo insmod /lib/modules/ch341.ko
sudo wget https://github.com/robertklep/dsm7-usb-serial-drivers/raw/main/modules/v1000/dsm-7.2/cp210x.ko
sudo insmod /lib/modules/cp210x.ko
sudo wget https://github.com/robertklep/dsm7-usb-serial-drivers/raw/main/modules/v1000/dsm-7.2/pl2303.ko
sudo insmod /lib/modules/pl2303.ko
sudo wget https://github.com/robertklep/dsm7-usb-serial-drivers/raw/main/modules/v1000/dsm-7.2/ti_usb_3410_5052.ko
sudo insmod /lib/modules/ti_usb_3410_5052.ko

# get the start file and set it to executable
cd /usr/local/etc/rc.d

sudo wget https://github.com/robertklep/dsm7-usb-serial-drivers/blob/main/usb-serial-drivers.sh
sudo chmod +x start-usb-drivers.sh
