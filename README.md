# Launch your own Metabase server

## Metabase
[Metabase](https://www.metabase.com) is a lightweight, privacy-focused, open-source analytics solution designed for website usage tracking. It stands out as a superior alternative to platforms like Google Analytics, offering users complete control over their data while maintaining a high level of performance and simplicity in implementation.

For simplicity, we'll deploy our Metabase server using an acorn image.

## What is Acorn?
Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storage space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

## Install acorn cli 
First we need to install acorn-cli locally.  Choose an install method from the list below:

**Linux or Mac** <br>
`curl https://get.acorn.io | sh`

**Homebrew (Linux or Mac)** <br>
`brew install acorn-io/cli/acorn`

**Windows** <br> 
Uncompress and move the [binary](https://cdn.acrn.io/cli/default_windows_amd64_v1/acorn.exe) to your PATH

**Windows (Scoop)** <br>
`scoop install acorn`

For up to date installation instructions, visit the [official docs](https://runtime-docs.acorn.io/installation/installing).

## Login with CLI
Back in our local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Deploying Acorn
Now that we have the acorn cli configured, we can deploy our acorn image with a few simple commands.

Clone the repo locally if you haven't already with:

`git clone https://github.com/randall-coding/metabase-acorn.git`

Next build and run.

`acorn build -t metabase`

`acorn run -n metabase metabase`

Visit your acorn dashboard to see if your deployment was successful.

Click on the metabase deployment, and find the endpoint section on the right side panel.  This is your metabase instance link.

![metabase_acorn_ui](https://github.com/randall-coding/metabase-acorn/assets/39175191/87d7164f-a43e-4eb7-8644-b5a95a3f1b2f)

![metabase_endpoint](https://github.com/randall-coding/metabase-acorn/assets/39175191/fc96e482-6644-4247-a060-806a58473d46)

## Configure Metabse

Go to your acorn Metabase URL. Then follow these steps:


1. Go to the web address for your Acorn Metabase. You'll be landed on Metabase's "Getting Started" page.

![metabse_start](https://github.com/randall-coding/metabase-acorn/assets/39175191/2813aceb-cadf-4f6c-81d2-e80bf370f855)

2. Click on the "Let's Get Started" button you see there. It will ask you to choose your language. Choose your preferred language.

3. Fill in your account details on the page that asks, "What should we call you?".

![metabase_user_form](https://github.com/randall-coding/metabase-acorn/assets/39175191/aa2336a5-ae76-42fd-8e44-f303cb6d89c7)

4. Follow the directions on the screen to finish setting things up.

5. You'll be prompted to add some databases. These are the databases that you want to let Metabase analyze. You can safely skip this step and add databases from the Metabase dashboard later.

6. Finally, click on "Take me to the Metabase", and you'll end up on the Metabase dashboard.

Congratulations! The Metabase installation is now complete.

## Conclusion
That's all there is to it.  We've now got a Metabase server up and running from an acorn image.
For more detailed instructions on working with your Metabase server see the Metabase documentation.

## References
* [Metabase Documentation](https://metabase.is/docs)
* [Getting started with Acorn](https://docs.acorn.io/getting-started)
