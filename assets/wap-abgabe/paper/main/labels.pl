# LaTeX2HTML 2018 (Released Feb 1, 2018)
# Associate labels original text with physical files.


$key = q/cite_art/;
$external_labels{$key} = "$URL/" . q|node19.html|; 
$noresave{$key} = "$nosave";

$key = q/cite_col/;
$external_labels{$key} = "$URL/" . q|node19.html|; 
$noresave{$key} = "$nosave";

$key = q/cite_conf/;
$external_labels{$key} = "$URL/" . q|node19.html|; 
$noresave{$key} = "$nosave";

$key = q/cite_tr/;
$external_labels{$key} = "$URL/" . q|node19.html|; 
$noresave{$key} = "$nosave";

$key = q/fig:flops/;
$external_labels{$key} = "$URL/" . q|node15.html|; 
$noresave{$key} = "$nosave";

1;


# LaTeX2HTML 2018 (Released Feb 1, 2018)
# labels from external_latex_labels array.


$key = q/_/;
$external_latex_labels{$key} = q|<|; 
$noresave{$key} = "$nosave";

$key = q/fig:flops/;
$external_latex_labels{$key} = q|1|; 
$noresave{$key} = "$nosave";

1;

