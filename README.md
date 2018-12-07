
# Nvidia Drive PX2

## Download and Install DriveInstall 5.0.5.0bL Linux:

1. SDK users can download DriveInstall from:
[SDK Download](https://developer.nvidia.com/nvidia-drive-downloads).
2. Run the below command on Host console,

```bash
    http_proxy=http://username:password@proxy_ip:proxy_port ./DriveInstall_5.0.5.0bL_SDK_b3.run 
```

![GitHub Logo](./images/drivepx1.png)
![GitHub Logo](./images/drivepx2.png)
![GitHub Logo](./images/drivepx3.png)
![GitHub Logo](./images/drive4.png)
![GitHub Logo](./images/drive5.png)

Once the software flashed.

## Install Tensorflow on Drive PX2

```bash
# To install Tensorflow
wget https://github.com/nullbyte91/nvidiaDrive_PX2/blob/master/InstallTensorFlowPX2.sh

chmod a+x InstallTensorFlowPX2.sh
bash InstallTensorFlowPX2.sh
```