

echo "Approve for org ${CORE_PEER_LOCALMSPID}"
PACKAGE_ID=$(sed -n "/${CC_NAME}_${CC_VERSION}/{s/^Package ID: //; s/, Label:.*$//; p;}" log.txt)
peer lifecycle chaincode approveformyorg -o orderer.dinus.com:7050 --tls --cafile $ORDERER_CA --channelID $CHANNEL_NAME --name $CC_NAME --version 1 --package-id $PACKAGE_ID --sequence 1 --init-required --signature-policy "OR ('Coe1Petani.peer','Coe2Pengepul.peer','Coe3Distributor.peer','Coe4Retailer.peer')" 
