# 🔧 Beats

## 🧪 What is it?

**Beats** is a collection of lightweight data shippers designed to send data from hundreds or thousands of machines to **Logstash** or **Elasticsearch**. Each Beat is optimized for a specific type of data (logs, metrics, network traffic, etc.).

Most popular Beats:

- **Filebeat** – ships log files
- **Metricbeat** – ships system/service metrics
- **Packetbeat** – captures network traffic
- **Winlogbeat** – collects Windows Event Logs
- **Auditbeat** – monitors audit framework (Linux)
- **Heartbeat** – uptime monitoring via ping

This project will mainly focus on **Filebeat** for real log ingestion use cases.

---

## 💻 Installation

### Windows

1. Download the `.zip` from:
https://www.elastic.co/downloads/beats/filebeat

2. Extract the content to: `C:\Program Files\Filebeat

(Optional) Install Filebeat as a Windows service:

.\install-service-filebeat.ps1

### Linux (Debian/Ubuntu)

curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.12.2-amd64.deb
sudo dpkg -i filebeat-8.12.2-amd64.deb

sudo systemctl enable filebeat
sudo systemctl start filebeat

## macOS
Using Homebrew:

brew tap elastic/tap
brew install elastic/tap/filebeat


sudo filebeat modules enable system
sudo filebeat setup
sudo service filebeat start

### How to run filebeat from any path

To make filebeat executable from any location in your terminal, you need to add it to your system’s PATH environment variable.

### Linux / macOS

Add the directory to PATH
Edit your shell configuration file (.bashrc, .zshrc, or .bash_profile) and add:

nano ~/.bashrc

export PATH="$PATH:/path/to/your/filebeat" 

source ~/.bashrc  # or your respective file

### Windows

Open System Properties → Advanced → Environment Variables.

Under "System Variables", select Path and click Edit.

Click New and paste the path to your Filebeat folder, e.g.:

``` C:\Program Files\Filebeat ```

Save and restart any open terminals.

Verification: filebeat version

You should see the installed version info if everything went fine.


### Configure execution of filebeat.yml

You can find the `.yml` configuration file in the `/filebeat` folder, which is set up to read logs from `/logs/simulated_logs.log`.

### Execution
First, navigate to the repository folder:

``` cd ~/git-best-practices-elasticstack ```

Change the file permissions for filebeat.yml:

``` chmod go-w ~/git-best-practices-elasticstack/lab-01-syslog-security/filebeat/filebeat.yml```

Then, launch Filebeat with the following command:

``` filebeat -e -c ~/git-best-practices-elasticstack/lab-01-syslog-security/filebeat/filebeat.yml ```

