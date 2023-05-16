# Workflow
The **module3_task** workflow is a GitHub Actions workflow designed to automate the validation of our website's codebase. This workflow is triggered daily and also runs whenever there is a new code push to the main branch of the repository.

The workflow consists of three steps:

- Clone the repository: This step involves cloning the codebase from the repository to the virtual machine where the validation will take place. This ensures that the latest version of the code is used for validation.

- Use ubuntu-22.04 as the virtual machine: In this step, the workflow specifies the use of the ubuntu-22.04 environment as the virtual machine for executing the validation process. This environment provides the necessary tools and dependencies for the validation to take place.

- Execute the make help command: This step involves running the make help command, which is a command defined in the Makefile of our codebase. The purpose of this command is to validate the presence of the Makefile and check if it implements the help target. The help target typically provides information about the available build targets and their usage.

By automating the validation process with this workflow, we ensure that our codebase remains in a deployable state and that the build process stays up to date. It also allows us to easily monitor the health of our codebase and catch any errors or issues before they impact the production environment.