ui <- fluidPage(
  h1("Music Analysis tool with Spotify",style="font-family:Comic Sans MS"),
  br(),
  splitLayout(
    verticalLayout(
      textInput("Artist", h4("Search for your Artist",style="font-family:Impact"), 
                value = "The Beatles",width="80%"),
      div(style="float:right",
        actionButton("Action","Search")),
      uiOutput("Information"),
      plotOutput("Major",height = "250px")
    ),
    verticalLayout(
      img(src="spotify.png",style="height:100px;margin:15px 150px"),
      div(style="border:1px solid grey",plotOutput("Radar",height = "500px")),
      img(src="meaning.png",style="width:100%")
    )
  )
)