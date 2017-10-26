Describe 'SampleTest' {
    Context 'Strict mode' { 
        Set-StrictMode -Version latest

        It 'Should error on timeout without passthru' {
            { Test-Path -Path C:\WhoOnEarthWouldHaveThisPath } | Should Throw
        }

        It 'Should not error on timeout with passthru' {
            { dir } | Should Not Throw
        }

        It 'Should return true when paths exist and passthru is used' {
            Test-Path -Path C:\, HKLM:\System -Passthru | Should be $True
        }

        It "Should return false when paths don't exist or we time out and passthru is used" {
            Wait-Path -Timeout 1 -Path C:\WhoOnEarthWouldHaveThisPath -Passthru | Should be $False
        }
    }
}
