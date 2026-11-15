### FILE: scripts/Set-AzureVianetVpnConnection.ps1
<#
.SYNOPSIS
    Configures a resilient Azure VPN Gateway connection to Azure Vianet using BGP and custom IPSec policies.

.DESCRIPTION
    This script automates the setup and configuration of a route-based Azure VPN Gateway,
    a Local Network Gateway representing the Azure Vianet side, and an IPsec connection
    between them. It enablesBGP enabled. It handles creation or update of the Azure Virtual Network Gateway, the Local Network Gateway representing the Vianet peer, and the IPsec connection between them. It specifically configures advanced IPsec parameters and enables BGP for dynamic routing, which is crucial for maintaining stable connectivity between Azure Global and Azure Vianet environments.

.EXAMPLE
    Set-VianetAzureVpnConnection `
        -ResourceGroupName "Contoso-US-Network-RG" `
        -Location "EastUS" `
        -VNetName "Contoso-