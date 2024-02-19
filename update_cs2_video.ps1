# script to programmatically apply optimal shadow parameters to cs2_video.txt
# written by ndunnett - https://github.com/ndunnett/cs2-config

# location of your Steam userdata directory
$userdata = "C:\Program Files (x86)\Steam\userdata"

# parameters to apply
$parameters = @{
    "setting.csm_viewmodel_shadows" = 1;
    "setting.csm_max_shadow_dist_override" = 720;
    "setting.lb_barnlight_shadowmap_scale" = 0.4;
    "setting.lb_enable_shadow_casting" = 1;
}

if (-not (Test-Path -Path $userdata -PathType Container)) {
    Write-Host "Directory doesn't exist: $userdata"
    Write-Host "Ensure `$userdata is correctly set to your Steam userdata directory."
} else {
    foreach ($file in Get-ChildItem "$userdata\*\730\local\cfg\cs2_video.txt") {
        Write-Host "Processing $file..."
        $content = Get-Content -Path $file.FullName

        $parameters.GetEnumerator().foreach({
            $new = $content -replace "`"($($_.Key))`"(\s+)`"(.*)`"", "`"`$1`"`$2`"$($_.Value)`""

            if ("$new" -eq "$content") {
                Write-Host " - Already set: $($_.Key) = $($_.Value)"
            } else {
                Write-Host " - Changed: $($_.Key) = $($_.Value)"
                $content = $new
            }
        })

        $content | Set-Content -Path $file.FullName
        Write-Host ""
    }

    Write-Host "Done!"
}

PAUSE
