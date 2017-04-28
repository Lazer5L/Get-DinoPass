# Get-DinoPass.ps1
# 
# Get a password from DinoPass and put it in the clipboard

Function Get-DinoPass {
    $Password = Invoke-WebRequest -uri http://www.dinopass.com/password/strong
    Set-Clipboard $Password.Content
    Return $Password.Content
}