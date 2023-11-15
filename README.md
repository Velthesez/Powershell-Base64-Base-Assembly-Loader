# Powershell Base64 Base Assembly Loader

 -- Description
Download and Load Assembly:

Retrieves a base64-encoded assembly from a given URL.
Converts the base64 string to bytes and loads the assembly into the current PowerShell session.
Debug Mode:

Includes an optional debug mode that, when enabled, lists all classes in the loaded assembly.
Invoke Specific Method:

If debug mode is disabled, the script targets a specific class (ClassLibrary1.A by default) and method (main by default) within the loaded assembly for invocation.
Output Information:

Displays information about the loaded classes, methods, and results during execution using Write-Host statements.
Usage:

Execute the script by running it in a PowerShell environment.
Optionally enable debug mode by setting (1 -eq 1) to explore all classes in the loaded assembly.

 -- HOW TO USE IT
* You take a file thats executable and you can use any EXE to Base64 Encoder, put it in raw text format on any website that lets you do raw pastes
* and put it where the paste.binger link is.
![image](https://github.com/Velthesez/Powershell-Base64-Base-Assembly-Loader/assets/112898308/a2bb0531-c39d-4800-8d83-8f955d3ef395)
The File Currently in the Base64 is a nanocore stub which is usually detected but not after putting it within this script.
Essentially making Malware that's previously detectable almost undetectable unless running out of the powershell runtime.
