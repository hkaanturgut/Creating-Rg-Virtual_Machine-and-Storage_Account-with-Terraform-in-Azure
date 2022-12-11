

 # Task 

By using Terraform in Azure
- Create a Resource Group
- Create a Virtual Machine
- Create a Storage account   
#


To fulfill the task's case , I have used module structure.
#
 # Steps that should be following ;
- Create (root) main.tf , variables.tf , outputs.tf and dev.tfvars

- Create a (root) module folder.

- Create resource module folders for each resource inside the (root) module folder

- Create main.tf and variables.tf inside the each resource module to create the resource
#
- NOTE : I used  {for_each} loop to create the subnet , to make the code more useful in the cases of creating more subnets.
#
- After done with the resource modules , create module blocks inside the (root) main.tf

- Fullfill the variables.tf with the variables and dev.tfvars file with the values

- Do [ terraform init ] > [ terraform plan -var-file="dev.tfvars" ] 

- After plan looks good , do [ terraform apply -var-file="dev.tfvars" ]

At the end , you will have a similar view of environment in portal like this


![portal_view](https://user-images.githubusercontent.com/113396342/206912392-6a8f3494-2e06-4f24-8d6f-89856bef6260.png)
