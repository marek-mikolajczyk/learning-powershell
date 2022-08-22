get-psdrive | format-table Name,
@{n='Root';e={($_.Root).ToLower()}}
