# GCE ODM Instance Bootstrapping with Terraform
 
In this repository you will find the terraform scripts, as well as the bash script, necessary to launch a virtual machine with OpenDroneMap on it (software for processng drone flights into 3d models).

This code was written by Wiliam Wiskes and designed to run in Google Cloud. The default pre-set machine is a C2 instance with 32g of RAM and 8 CPU. I highly recommend using a compute optimized machine (C2), over an E2 or N2, as C2 instances are tuned for the High-performance computing (HPC) that this kind of modelling perfers. 

OpenDroneMap runs on port 8000. After this startup script has finished running navigate to:

http:// { insert your virtual machines ephemeral IP here } :8000/dashboard/

and you will see this:

![alt text](https://wwiskes.github.io/datadump/SDHMtut/odm1.JPG)

Create a username and password and you will be able to begin processing imagery:

![alt text](https://wwiskes.github.io/datadump/SDHMtut/odm2.JPG)

This virtual machine is not designed for storage. To save on costs download your imagery after processing and either stop or destroy your VM.

Thanks and happy modelling!
