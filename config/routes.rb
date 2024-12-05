Rails.application.routes.draw do
  get("/", {:controller=>"zebra",:action=>"rules"})
  
  get("/rock", {:controller=>"zebra",:action=>"play",:move=>"rock"})

  get("/paper", {:controller=>"zebra",:action=>"play",:move=>"paper"})

  get("/scissors", {:controller=>"zebra",:action=>"play",:move=>"scissors"})

end
