# inmap-1.9.6-gridsplit

This repo contains the subset of INMAP v1.9.6 model source code. **INMAP Air Quality Model**: See the details of INMAP [here](https://inmap.run/)

I have created this repo because I am going to modify the grid split method. 

# INMAP configuration files created for LOCAETA project

Under /eval/ directory, you will see multiple toml files. The ones starting with "nei2020Config_" are the configuration files for LOCAETA, and nei2005 and nei2014 are the config files used to test simulation. The others came with INMAP source code.  

# How to run the INMAP simulation
The config file under /eval/ is the key file for INMAP simulation. Once you customize it for your INMAP simulations (e.g., emissions file path), you can run this command in the main directory: 

```
./inmap run steady -s --config ../eval/nei2020Config_LA_CCS.toml 
```

If you run this model in your macbook, please add "caffeinate -i" beofre the command, so the run is not interrupted.  


## Contact Information

For any questions or further information regarding this repository, please contact:

**Yunha Lee**  
**Research Scientist**  
**yunha.lee@carbonsolutionsllc.com**  
**Carbon Solutions**


