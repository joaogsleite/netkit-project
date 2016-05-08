if [ "$1" = "anel" ]
then
    lstart -f router_sede router_lisboa router_porto router_coimbra
fi

if [ "$1" = "sede" ]
then
    lstart -f router_sede switch_public switch_private switch_admin ap_sede server_email server_http server_monitor server_fileserver pc_admin pc_contabilista pc_rh pc_sede1 pc_sede2 
fi

if [ "$1" = "externa" ]
then
    lstart -f router_sede router_advogados server_advogados router_porto ap_porto pc_porto2 router_lisboa
fi
