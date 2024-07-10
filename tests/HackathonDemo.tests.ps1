##########################
#  AZURE POLICY TESTING  #
##########################
#  
#  Testing the Azure Policy for allowed locations based on Azure Fundamentals
#
#  Reference: https://github.com/github/azure-policies/tree/main/fundamentals/allowed-locations
# 
###########
#  Steps  #
###########
#
# 1.) Ensure that you have the valid pre-requisite packages (PowerShell, Pester, Azure CLI) installed and configured when testing locally.
# 2.) Connect to your Azure subscription via the "az login" command, selecting the appropriate subscription to conduct the test against.
# 3.) Run the script by executing the command "Invoke-Pester -Path HackathonDemo.ps1"
# 4.) PROFIT!
#

#Sample Test - Verify Allowed Locations 
Describe "Validate Allowed Locations Policy" {
    It "Checking to see if Azure Policy blocks the deployment of a resource in a disallowed location" {
       { az vm create --resource-group chadeckles --name PesterTestVM --image Ubuntu2204 --size Standard_B1s --location spaincentral --generate-ssh-keys  
       | Should -Throw "*disallowed by policy*"
       }
    }
}
