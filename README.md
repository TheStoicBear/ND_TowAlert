# ND_TowAlert
A simple way to add a new job, with notifications for open tows.

![ND_TowAlert](https://user-images.githubusercontent.com/112611821/231020861-d7e81041-6e4d-4c1a-9b90-ca7df9f3ab46.png)


# Usage

---------------


/tow [Description of your call]


# Installation

---------------

1) Unpack ZIP File.
2) Drag and Drop ND_Towing into your [ND] Folder
3) Navigate to our Server.cfg and add the following ensure that [ND_Core, and ND_Characters] start before this.
4) Navigate to ND_Characters and add the following or if you renamed your already you can **ADD** them your Departments
```lua
departments = {                         -- these are the required discord role ids to be able to access these departments (enable developer mode in discord's advanced settings and right click the role)
        ["CIV"] = {"0"},
        ["SAHP"] = {"0"},
        ["LSPD"] = {"0"},
        ["BCSO"] = {"872921520719142932"},
        ["LSFD"] = {"872921520719142932"},
        ["LSDOT"] = {"0"}
    },


    departmentPaychecks = false,            -- if you would like salaries to be paid out to the departments, set this to true
    paycheckInterval = 24,                  -- this is how often (in minutes) paychecks are to be paid out if departmentPaychecks is set to true
    departmentSalaries = {                  -- the amount given to the character per interval of time set via paycheckInterval
        ["CIV"] = 300,
        ["SAHP"] = 700,
        ["LSPD"] = 600,
        ["BCSO"] = 500,
        ["LSFD"] = 650,
        ["LSDOT"] = 450
    },
```
# Examples
![2 (2)](https://user-images.githubusercontent.com/112611821/230740011-fba7166b-a229-45e2-957e-d7794991c9d2.png)
![image](https://user-images.githubusercontent.com/112611821/230740013-4073d534-05ad-4639-ba12-07ebd85dd984.png)
![1](https://user-images.githubusercontent.com/112611821/230740014-6d7d02c1-1237-447d-be73-831176ce4041.png)














