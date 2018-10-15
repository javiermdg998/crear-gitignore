$path=".gitignore"
$idea=".idea"
if(![System.IO.File]::Exists($path)){
   gibo dump windows linux macos > .gitignore
}

Foreach($i in Get-ChildItem (Get-Location)){
    if(Test-Path -Path $i.fullname -PathType Container){      
        Foreach($d in Get-ChildItem($i.fullname)){
             if(Test-Path -Path $d.fullname -PathType Container){              
                    if(Test-Path -Path  "$($d.fullname)\$idea"){
                        $fullname="$($d.fullname)/$path"                       
                        if(![System.IO.File]::Exists($fullname)){
                            gibo dump java jetbrains > "$fullname"
                                                      
                        }
                    }
                }
                               
            
        }
    }
}