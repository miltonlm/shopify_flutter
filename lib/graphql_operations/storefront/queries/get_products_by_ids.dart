/// Query to get products by ids
const String getProductsByIdsQuery = r'''
query($ids : [ID!]!){
  nodes(ids: $ids) {
    ... on Product {
    options(first: 50) {
            id
            name
            values
            } 
      id
      handle
      collections(first: 250) {
        edges {
          node {
            description
            descriptionHtml
            handle
            id
            updatedAt
            title
          }
        }
      }
      title
      availableForSale
      createdAt
      description
      descriptionHtml
      images(first: 250) {
          edges {
            node {
              altText
              id
              originalSrc
            }
          }
        }
      variants(first: 250) {
        edges {
          node {
            priceV2 {
              amount
              currencyCode
            }
            title
            image {
              altText
              originalSrc
              id
            }
            compareAtPriceV2 {
              amount
              currencyCode
            }
            weightUnit
            weight
            availableForSale
            sku
            requiresShipping
             selectedOptions {
              name
              value
             }
            id
            quantityAvailable
          }
        }
      }
      onlineStoreUrl
      metafields(first: 250) {
        id
        key
        value
        type            
      }
      productType
      publishedAt
      tags
      updatedAt
      vendor
    }
  }
}
''';
