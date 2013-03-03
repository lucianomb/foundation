module.exports =

  # =================================
  # Production Environment

  templateData:
    site:
      url: "http://braziljs.github.com/foundation"

    # Zone Of Front-Enders

    zofe: [
      episode: "01"
      date: "24/08/12"
      title: "ZOFE #1: Agora é pra valer!"
      url: "http://zofe.com.br/posts/zofe-1-agora-e-pra-valer/"
    ,
      episode: "02"
      date: "24/08/12"
      title: "ZOFE #2: Beijo no Coração"
      url: "http://zofe.com.br/posts/zofe-2-beijo-no-coracao/"
    ,
      episode: "03"
      date: "24/08/12"
      title: "ZOFE #3: Carreira em Front-End"
      url: "http://zofe.com.br/posts/zofe-3-carreira-em-front-end/"
    ]

    # BrazilJS Weekly

    weekly: [
      edition: "01"
      date: "24/08/12"
    ,
      edition: "02"
      date: "31/08/12"
    ,
      edition: "03"
      date: "07/09/12"
    ,
      edition: "04"
      date: "14/09/12"
    ,
      edition: "05"
      date: "21/09/12"
    ,
      edition: "06"
      date: "28/09/12"
    ,
      edition: "07"
      date: "05/10/12"
    ,
      edition: "08"
      date: "12/10/12"
    ,
      edition: "09"
      date: "19/10/12"
    ,
      edition: "10"
      date: "26/10/12"
    ,
      edition: "11"
      date: "02/11/12"
    ,
      edition: "12"
      date: "31/08/12"
    ]

  # =================================
  # Collections

  collections:

    # Get all projects sorted by alphabetical order
    projects: -> @getCollection("documents").findAll({url:$startsWith:'/projetos'}, [title:1])

    # Get all projects sorted by date order
    blogposts: -> @getCollection("documents").findAll({url:$startsWith:'/blog'}, [date:-1])

  # =================================
  # Development Environment

  environments:
    development:
      templateData:
        site:
          url: "http://localhost:9778"