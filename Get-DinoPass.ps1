# Get-DinoPass.ps1
# 
# Get a password from DinoPass and put it in the clipboard

Function Get-DinoPass {
    $Password = Invoke-WebRequest -uri http://www.dinopass.com/password/strong
    Set-Clipboard $Password.Content
    Return $Password.Content
}

Function Get-DinoPassSimple {
    $Password = Invoke-WebRequest -uri http://www.dinopass.com/password/simple
    Set-Clipboard $Password.Content
    Return $Password.Content
}