# INMAP-1.9.6-gridsplit

This repository contains a subset of the **INMAP v1.9.6** model source code. The **INMAP Air Quality Model** is designed for spatially distributed air quality modeling. You can find more information about INMAP [here](https://inmap.run/).


This repository was created to facilitate modifications to the grid-splitting method, although **no source code modifications have been made yet (as of October 2024).**


## INMAP Configuration Files for the LOCAETA Project

In the `/eval/` directory, you will find several TOML configuration files:

- Files starting with `nei2020Config_` are specifically created for the LOCAETA project.
- Files labeled `nei2005` and `nei2014` were used for testing simulations.
- Other configuration files came with the original INMAP source code.

These configuration files are essential for customizing and running INMAP simulations tailored to the LOCAETA project.

## Running INMAP Simulations

To run an INMAP simulation, you need to customize the configuration file under the `/eval/` directory. Modify the file to fit your simulation needs, such as setting the path to your emissions file. After making the necessary adjustments, you can run the simulation from the main directory using the following command:

```
./inmap run steady -s --config ../eval/nei2020Config_LA_CCS.toml
```

### Running INMAP on macOS

If you are running the INMAP model on a MacBook, I recommend you to use the `caffeinate` command to prevent your computer from sleeping during long simulations. The adjusted command would be:

```
caffeinate -i ./inmap run steady -s --config ../eval/nei2020Config_LA_CCS.toml
```

## Contact Information

For any questions or further information regarding this repository, feel free to reach out:

**Yunha Lee**  
**Research Scientist**  
**Carbon Solutions**  
Email: [yunha.lee@carbonsolutionsllc.com](mailto:yunha.lee@carbonsolutionsllc.com)


