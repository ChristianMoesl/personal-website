# LaTeX2HTML 2018 (Released Feb 1, 2018)
# Associate images original text with physical files.


$key = q/[a_0,a_0+a_1,a_0+a_1+a_2,a_0+a_1+a_2+a_3,cdots];MSF=1.6;AAT/;
$cached_env_img{$key} = q|<IMG
 WIDTH="334" HEIGHT="31" ALIGN="MIDDLE" BORDER="0"
 SRC="|."$dir".q|img3.png"
 ALT="$[a_0, a_0 + a_1, a_0 + a_1 + a_2, a_0 + a_1 + a_2 + a_3, \cdots ]$">|; 

$key = q/[a_0,a_1,a_2,a_3,cdots];MSF=1.6;AAT/;
$cached_env_img{$key} = q|<IMG
 WIDTH="124" HEIGHT="31" ALIGN="MIDDLE" BORDER="0"
 SRC="|."$dir".q|img1.png"
 ALT="$[a_0, a_1, a_2, a_3, \cdots]$">|; 

$key = q/[i,a_0,a_0+a_1,a_0+a_1+a_2,cdots];MSF=1.6;AAT/;
$cached_env_img{$key} = q|<IMG
 WIDTH="219" HEIGHT="31" ALIGN="MIDDLE" BORDER="0"
 SRC="|."$dir".q|img2.png"
 ALT="$[i, a_0, a_0 + a_1, a_0 + a_1 + a_2, \cdots]$">|; 

$key = q/includegraphics[width=12cm]{gflops.eps};AAT/;
$cached_env_img{$key} = q|<IMG
 WIDTH="527" HEIGHT="356" ALIGN="BOTTOM" BORDER="0"
 SRC="|."$dir".q|img4.png"
 ALT="\includegraphics[width=12cm]{gflops.eps}">|; 

1;

