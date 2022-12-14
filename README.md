# How to use

## Build
```bash
docker build . -t simpleci
```

## Use

### Linux 
Add this on .zshrc or .bashrc
```bash
alias simpleci='docker run --rm --interactive --security-opt label=disable --volume "${PWD}":/usr/src/app simpleci'
```

### Windows 

Add this on $PROFILE:

```powershell
Function simpleFn {
    param(
        [String]$arg
    )
    $command = "docker.exe run --rm --interactive --security-opt label=disable --volume ${PWD}:/usr/src/app simpleci $arg"
    Invoke-Expression $command
}

Function updateSimpleFn {
    $command = "docker.exe build . -t simpleci"
    Invoke-Expression $command
}

Set-Alias -Name simpleci -Value simpleFn
Set-Alias -Name Build-Simple-CI -Value updateSimpleFn
```