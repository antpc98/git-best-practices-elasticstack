### 🛠️ Logstash Setup

### 🧪 What is Logstash?
Logstash is an open-source server-side data processing pipeline that ingests data from multiple sources, transforms it, and then sends it to your favorite “stash,” like Elasticsearch. In this project, we will use Logstash to parse and process logs before sending them to Elasticsearch for analysis and visualization in Kibana.

### 💻 Installation

# Windows

Download the .zip from the official Logstash download page (https://www.elastic.co/downloads/logstash).

Extract the content to your desired directory (e.g., C:\Program Files\Logstash).

Set the environment variable LOGSTASH_HOME to the Logstash installation folder.

``` LOGSTASH_HOME "C:\Program Files\Logstash" ``` 

Ensure you have Java installed (Logstash requires Java). You can check if Java is installed with the following command:

``` java -version ```

### Installation on Linux (Debian/Ubuntu)
Install Logstash with the following commands:

```curl -L -O https://artifacts.elastic.co/downloads/logstash/logstash-8.12.2-amd64.deb```
```sudo dpkg -i logstash-8.12.2-amd64.deb```

Enable and start the Logstash service:

```sudo systemctl enable logstash```
```sudo systemctl start logstash```

### Installation on macOS
Using Homebrew:

```brew tap elastic/tap```
```brew install elastic/tap/logstash```

Then, you can run Logstash.

## Installing Java (If Not Installed)

Logstash requires Java to run. If you don't have Java installed, you can follow these steps to install it on your system.

# Windows
Download the latest version of JDK (Java Development Kit) from the official Oracle website:

(https://www.oracle.com/java/technologies/downloads/#java11?er=221886)

Run the installer and follow the installation prompts.

Set the JAVA_HOME environment variable:

    * Open Command Prompt as Administrator.

    * Find your Java installation path, typically located in C:\Program Files\Java\jdk-x.x.x.

        ```JAVA_HOME "C:\Program Files\Java\jdk-x.x.x"```

Add Java to your PATH environment variable:

```PATH "%PATH%;%JAVA_HOME%\bin" ``` 

Verify the installation by running:

``` java -version```

### Linux (Debian/Ubuntu)
Update the package index:

``` sudo apt update ```

Install the default OpenJDK version (recommended for most systems):

```sudo apt install default-jdk```
Verify the installation:

```java -version```

This should return the version of Java installed.

If you need to install a specific version (e.g., OpenJDK 11), you can do so by:

``` sudo apt install openjdk-11-jdk ```

### macOS
Install Java using Homebrew (if you don't have Homebrew installed, you can get it from here):

```brew install openjdk```

Once Java is installed, add it to your PATH by running:

``` echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> ~/.bash_profile ```

``` source ~/.bash_profile ```

Verify the installation:

```java -version```


### 🔁 Execute Logstash from any directory (Linux, macOS, Windows)
To make Logstash globally executable (from any path), you need to add it to your system PATH.

### Linux (Debian/Ubuntu)
1. Locate your Logstash installation

```/home/logstash-8.17.4```

2. Edit your .bashrc or .zshrc

```nano ~/.bashrc```

3. Add this line:

```export PATH="$PATH:/home/logstash-8.17.4/bin"```

Then apply the changes:

```logstash --version```

### macOS
Same process as Linux. Use .zshrc or .bash_profile depending on your shell.

nano ~/.zshrc

Add:

export PATH="$PATH:/Users/your_user/Elasticstack/logstash-8.17.4/bin"

Apply with:

source ~/.zshrc

Test:

logstash --version

### Windows

1. Locate Logstash
Example: C:\Elasticstack\logstash-8.17.4\bin

2. Add to PATH
Press Win + S, type Environment Variables.

Go to System Properties → Environment Variables.

Under System variables, select Path → Edit.

Click New and paste the path:

C:\Elasticstack\logstash-8.17.4\bin

Click OK and restart your terminal (CMD or PowerShell).

3. Test

logstash --version

You should now be able to run Logstash from anywhere.
