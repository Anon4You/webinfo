# 🌐 WebInfo

WebInfo is a convenient shell script designed to gather and display various types of information about websites and domains without requiring any command-line arguments. It offers a collection of useful features for web developers, system administrators, and security professionals.

## Screenshot 📸

<details>
<summary>Click to view the screenshot</summary>

![WebInfo Screenshot](screenshot/screenshot.jpg)

</details>


## Features ✨

- **🔍 WHOIS**: Retrieve registration details for a specified domain.
- **🌐 DNS Lookup**: Perform DNS queries to get the domain's DNS records.
- **🖥️ Host**: Obtain information about the specified host.
- **📡 Traceroute**: Analyze the route packets take to reach the target domain.
- **🔄 Reverse DNS**: Find the domain name associated with the domain IP address.
- **🌍 GeoIP**: Get geographical information about the domain IP address.
- **🛠️ Nmap**: Perform network exploration and security auditing.
- **📜 HTTP Headers**: Fetch and display HTTP header information for a website.
- **🔗 Page Links**: Extract and display all links from a webpage.

## Installation 📥

To use WebInfo, clone the repository:

```bash
git clone https://github.com/Anon4You/webinfo.git
```

After cloning, navigate into the directory:

```bash
cd webinfo
```

Then, give the script execute permissions:

```bash
chmod +x webinfo.sh
```

## Usage 🚀

To run the script, simply execute it in your terminal:

```bash
./webinfo.sh
```

The script will automatically gather information for your default settings or predefined target, and display the results.

## Example 💡

Just running the script:

```bash
./webinfo.sh
```

will execute all the built-in checks and display the collected information.

## License 📜

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments 🙏

Special thanks to [Hackertarget.com](https://hackertarget.com) for providing the API used in this tool to perform various scans and gather essential information. If you have any questions or suggestions about WebInfo, feel free to reach out!
