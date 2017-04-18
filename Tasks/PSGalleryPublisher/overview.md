# The easiest way to publish your PowerShell module!
PowerShell Gallery is a central repository for all modules so you should publish yours too!

# Setup and get key
To publish your PowerShell module, create an account in PowerShell Gallery and obtain API Key.
1. Go to [PowerShell Gallery](https://www.powershellgallery.com/) and click 'Register'
2. Register by either using work account or personal account.
3. Once registered, signin and go to your account by simply click your account name.
4. Under [Credentials] area, you shall see API Key. 

# How to use the task
1. In Build or Release definition, click Add Task.
2. From Package area, click 'Add' for 'PowerShell Gallery Publisher'
3. Enter your API Key, and select folder where your PowerShell module lives. The folder name must match with .psd1 and .psm1 files.

# Confirm the result
Once your Build or Relese completed, go back to [PowerShell Gallery](https://www.powershellgallery.com/) and check your account. You should see the module under your items.
Or, simply open PowerShell and run Find-Module [Your module name]