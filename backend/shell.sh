#!/bin/bash
gaiacli tx send cosmos1nga3ll52ekasc6xdsge5ywdudyp7eyg9z90933 cosmos1uvdjd3tawvx03adsdkcnel54ncvnxjz78f3yl5 100stake --chain-id=testing --generate-only > unsignedSendTx.json
echo 12345678 |gaiacli tx sign   --chain-id=testing --from=cosmos1nga3ll52ekasc6xdsge5ywdudyp7eyg9z90933  unsignedSendTx.json > signedSendTx.json
gaiacli tx broadcast signedSendTx.json


