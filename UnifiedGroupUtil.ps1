function Get-UnifiedGroupMember {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,Position=1,ValueFromPipeline=$True)]
        [string]$Identity
    )

    Begin {}

    Process {
        Get-UnifiedGroupLinks -Identity $Identity -LinkType Members
    }

    End {}
}

function Get-UnifiedGroupOwner {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,Position=1,ValueFromPipeline=$True)]
        [string]$Identity
    )

    Begin {}

    Process {
        Get-UnifiedGroupLinks -Identity $Identity -LinkType Owners
    }

    End {}
}

function Add-UnifiedGroupMember {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,Position=1,ValueFromPipeline=$True)]
        [string]$Identity,

        [Parameter(Mandatory=$True,Position=2,ValueFromPipeline=$False)]
        [string]$Member
    )

    Begin {}

    Process {
        Add-UnifiedGroupLinks -Identity $Identity -LinkType Members -Links $Member
    }

    End {}
}

function Add-UnifiedGroupOwner {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,Position=1,ValueFromPipeline=$True)]
        [string]$Identity,

        [Parameter(Mandatory=$True,Position=2,ValueFromPipeline=$False)]
        [string]$Member
    )

    Begin {}

    Process {
        Add-UnifiedGroupLinks -Identity $Identity -LinkType Owners -Links $Member
    }

    End {}
}

function Remove-UnifiedGroupMember {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,Position=1,ValueFromPipeline=$True)]
        [string]$Identity,

        [Parameter(Mandatory=$True,Position=2,ValueFromPipeline=$False)]
        [string]$Member,

        [Parameter(Mandatory=$False,Position=2,ValueFromPipeline=$False)]
        [boolean]$Confirm = $True
    )

    Begin {}

    Process {
        Remove-UnifiedGroupLinks -Identity $Identity -LinkType Members -Links $Member -Confirm:$Confirm
    }

    End {}
}

function Remove-UnifiedGroupOwner {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$True,Position=1,ValueFromPipeline=$True)]
        [string]$Identity,

        [Parameter(Mandatory=$True,Position=2,ValueFromPipeline=$False)]
        [string]$Member,

        [Parameter(Mandatory=$False,Position=2,ValueFromPipeline=$False)]
        [boolean]$Confirm = $True
    )

    Begin {}

    Process {
        Remove-UnifiedGroupLinks -Identity $Identity -LinkType Owners -Links $Member -Confirm:$Confirm
    }

    End {}
}