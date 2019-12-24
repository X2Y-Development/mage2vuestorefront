export TIME_TO_EXIT=2000
export VS_INVALIDATE_CACHE_URL=http://localhost:3000/invalidate?key=aeSu7aip&tag=
export VS_INVALIDATE_CACHE=1
export PRODUCTS_SPECIAL_PRICES=true
export MAGENTO_CONSUMER_KEY=zxjp72bqyar8n3doiw6jhjlpvfan3hlz
export MAGENTO_CONSUMER_SECRET=pw1gj6218ck7ltnksnaiifk97cmtwj9j
export MAGENTO_ACCESS_TOKEN=ekb7c2mc61lrrkjvoiy2m6tz4sy3wb4r
export MAGENTO_ACCESS_TOKEN_SECRET=uvvdawxhggfjp0j1lzh37dcf490kbddh
export SEO_USE_URL_DISPATCHER=1
export DATABASE_URL=elasticsearch:9200
export REDIS_HOST=redis
export INDEX_NAME=vue_storefront_catalog

echo 'Default store - in our case United States / en'
export MAGENTO_URL=https://explorebeautiful.com/rest

node --harmony cli.js blocks
node --harmony cli.js pages 
node --harmony cli.js reviews
node --harmony cli.js categories --removeNonExistent=true --extendedCategories=true
node --harmony cli.js productcategories
node --harmony cli.js attributes --removeNonExistent=true
node --harmony cli.js taxrule --removeNonExistent=true
node --harmony cli.js products --removeNonExistent=true --partitions=1
