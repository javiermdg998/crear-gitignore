$path=".gitignore"
$idea=".idea"
if(![System.IO.File]::Exists($path)){
   gibo dump windows linux macos > .gitignore
   "gitignore general creado"
}

Foreach($i in Get-ChildItem (Get-Location)){
    if(Test-Path -Path $i.fullname -PathType Container){
        #$i.fullname
        Foreach($d in Get-ChildItem($i.fullname)){
             if(Test-Path -Path $d.fullname -PathType Container){
                 
               #  "check"
                 #"$($i.fullname)\$idea"
                 if(Test-Path -Path  "$($i.fullname)\$idea"){
                    $fullname="$($i.fullname)/$path"
                    
                    if(![System.IO.File]::Exists($fullname)){
                        gibo dump java jetbrains > "$fullname"
                        "gitignore creado"
                    }
                }
                               
            }
        }
    }
}