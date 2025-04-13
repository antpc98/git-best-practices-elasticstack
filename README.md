# 🛠️ Git Best Practices + Elastic Stack
This repository showcases hands-on projects combining **Elastic Stack** (Elasticsearch, Logstash, Kibana, Beats) with clean, professional **Git workflows**.

You'll find:
- Realistic log ingestion and parsing use cases
- Modular configuration examples
- Beats integrations for data collection
- Git branching and pull request strategies

  ## 🚀 Getting Started

Follow these steps to run the project locally:

### ✅ Install Git on your system

#### 🔹 Windows
1. Go to the official Git website: (https://git-scm.com)
2. Download the latest version for Windows.
3. During installation, make sure to enable:
   - *Git from the command line and also from 3rd-party software*
   - *Use Git Bash only* (recommended for beginners)
4. Once installed, right-click anywhere on your desktop and open **Git Bash**.

#### 🔹 Linux (Debian/Ubuntu-based)
Open your terminal and run:

sudo apt update
sudo apt install git
git --version

#### 🔹 MacOS 
You have two main options to install Git:

Option A: Using Homebrew (recommended)

1. Open the Terminal.

2. If you don’t have Homebrew, install it with:

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

3. Then install Git:

brew install git


4. git --version


Option B. Graphical installer

Go to https://git-scm.com/download/mac

Download the latest Git installer.

Follow the install steps and confirm using git --version in your Terminal.


### ✅ Setting Up Git Configuration

Before starting to work with Git, make sure you set up your user name and email. This ensures that your commits are properly attributed to you.

Run the following commands in your terminal or Git Bash:

git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

⚠️ Replace "Your Name" and "your.email@example.com" with your actual details.

If you are using GitHub, you can link your commits with your GitHub account for easier identification.

### 🛡️ Generating and Adding SSH Keys (Optional)
To authenticate with Git repositories (especially on GitHub), it's a good idea to use SSH keys. This ensures secure communication between your local machine and remote repositories.

Generate SSH Key:

ssh-keygen -t rsa -b 4096 -C "your.email@example.com"

Add your SSH key to the SSH agent:

Start the SSH agent:

eval "$(ssh-agent -s)"

Then add your SSH key to the agent:

ssh-add ~/.ssh/id_rsa

Add SSH key to GitHub:

Copy the public key to your clipboard:

cat ~/.ssh/id_rsa.pub

Go to GitHub's SSH key settings and paste the key there.

Test your SSH connection:

ssh -T git@github.com

If everything is set up correctly, you should see a welcome message from GitHub.

### Clone the repository

Open your terminal and run:

git clone https://github.com/tu-usuario/git-best-practices-elasticstack.git
cd git-best-practices-elasticstack

### 💻 Open the project in Visual Studio Code
If you have Visual Studio Code installed (https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line), you can open the cloned repository like this:

🔹 Option 1: From the terminal

cd git-best-practices-elasticstack
code .

💡 If code is not recognized as a command, you may need to add it to your PATH (**Helper:** https://code.visualstudio.com/docs/configure/command-line#_launching-from-the-command-line).

🔹 Option 2: From the VSCode interface
Open Visual Studio Code.

Click on File > Open Folder....

Select the git-best-practices-elasticstack folder you cloned.

### 📁 Repository Structure

This project is structured to separate documentation, labs, and practical tests for better organization and scalability:

/
├── docs/                      # Technical docs for each component (Filebeat, Logstash, etc.)
│   ├── beats-setup.md         # Installation & config of Beats
│   ├── logstash-setup.md      # How to setup, configure and test Logstash pipelines
│   ├── elasticsearch-setup.md       # How to setup, make querys and use Elasticsearch effectively
│   └── kibana-setup.md              # Setup Kibana, make features and dashboard building
│
├── lab-01-syslog-security/    # Hands-on lab simulating a real-world log ingestion case
│   ├── logs/                  # Simulated security logs
│   ├── filebeat/              # Filebeat config (input) (.yml)
│   ├── logstash/              # Grok pipeline for log parsing
│   ├── elasticsearch/         # Query examples, templates and documentation
│   ├── kibana/                # Kibana dashboard export & documentation
│   └── generate_logs.sh       # Script executable to generate simulates logs
│
├── tests/                     # Optional: challenges or exercises to reinforce learning
│
└── README.md                  # Main entry point and guide for using this repository

✅ This repo is meant to be both educational and practical, combining real-life inspired. 

### 🧪 Running the Log Generator
To simulate realistic cybersecurity events, a custom log generator script is included. This will produce a .log file used in the lab pipeline.

### 📁 Location
The script is located at:

```/lab-01-syslog-security/scripts/generate_logs.sh```

### 🚀 How to run it
Make sure the script has execution permissions:

```` chmod +x lab-01-syslog-security/scripts/generate_logs.sh````

Run the script:

```./lab-01-syslog-security/scripts/generate_logs.sh```

This will generate a file called simulated_syslog.log under:

```lab-01-syslog-security/logs/```

## ❤️ Final Message
Thank you for visiting this project. It's crafted with care and based on real-world experience, and I hope it becomes useful in your professional or learning journey.

If you have any questions or suggestions for improvement, I’ll be more than happy to hear from you!



