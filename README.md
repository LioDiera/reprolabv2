# ReproLabV2 - Enhanced Azure AD Hybrid Authentication Lab

> This is an enhanced version of ReproLab with improved flexibility, security, and modern features.

This template will deploy a comprehensive Windows Server lab environment (2012 R2, 2016, 2019, 2022, or 2025) that can be used for testing Azure AD hybrid authentication scenarios, single sign-on, and federation services.

## 🚀 What's New in V2

### Enhanced Features
- **Multiple OS Support**: Choose from Windows Server 2012 R2, 2016, 2019, 2022, or 2025
- **Flexible VM Sizing**: Select from Standard_B2s, Standard_DS1_v2, or Standard_D2s_v3 based on your needs
- **Enhanced Security**: Restrict RDP access to your specific public IP address
- **Cost Optimization**: Choose appropriate VM sizes for your budget and performance requirements

### Planned Enhancements (Coming Soon)
- Additional modern authentication scenarios
- Improved automation and deployment experience
- Enhanced monitoring and logging capabilities
- Better integration with modern Azure services

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3a%2f%2fraw.githubusercontent.com%2fliodiera%2freprolabv2%2fmaster%2fazuredeploy.json" target="_blank">
    <img src="https://aka.ms/deploytoazurebutton"/>
</a>

## ��️ Architecture

### Networking
The virtual network has two subnets with enhanced security:
- **External subnet**: Internet-facing resources with restricted access
- **Internal subnet**: Domain-joined resources with internal-only access
- **Network Security Groups**: Configured with least-privilege access principles
- **IP Restriction**: Optional public IP whitelisting for RDP access

### Virtual Machines
This template deploys four specialized VMs:

1. **Remote Desktop Jump Server/ADFS Proxy** (external subnet)
2. **Domain Controller** (internal subnet) - with AD DS
3. **ADFS Farm Server** (internal subnet) - for federation services  
4. **Synchronization Server** (internal subnet) - for Azure AD Connect

### Active Directory Domain Services
- Single-domain forest deployment and configuration
- Pre-populated organizational structure with realistic test data
- 25+ test users across 4 departments (Accounting, IT, Marketing, Operations)
- Realistic organizational hierarchy and reporting structure

## 📋 Prerequisites

- Azure subscription
- Basic understanding of hybrid identity concepts
- Your public IP address (for secure RDP access)

## 🛠️ Deployment Parameters

| Parameter | Description | Options/Default |
|-----------|-------------|-----------------|
| **OS Version** | Windows Server version | 2012 R2, 2016, 2019 (default), 2022, 2025 |
| **VM Size** | Virtual machine size for all VMs | Standard_DS1_v2 (default), Standard_B2s, Standard_D2s_v3 |
| **Public IP** | Your public IP for RDP restriction | Optional security enhancement |
| **Admin Credentials** | Local administrator account | Username and secure password |
| **Domain Name** | AD DS domain FQDN | Default: synclab.local |

## 🔧 Usage Scenarios

- **Azure AD Connect Testing**: Test synchronization scenarios
- **ADFS Configuration**: Practice federation setup and troubleshooting
- **Hybrid Authentication**: Test various authentication flows
- **Migration Testing**: Validate migration scenarios across OS versions
- **Training Environment**: Learn hybrid identity concepts safely

## 📚 Documentation

- [Lab Setup Guide](docs/lab-setup.md)
- [Troubleshooting Common Issues](docs/troubleshooting.md)
- [Best Practices](docs/best-practices.md)

## 🤝 Contributing

This project builds upon the excellent work from:
- [mbakunas/azure-ad-sso-lab](https://github.com/mbakunas/azure-ad-sso-lab)
- [dakoer/Synlab](https://github.com/dakoer/Synlab)

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## ⚠️ Important Notes

- This is a lab environment - not for production use
- All VMs use self-signed certificates by default
- Default passwords are provided for testing purposes only
- Review and modify security settings for your requirements

---
**ReproLabV2** - Making hybrid authentication testing more practical and accessible.
