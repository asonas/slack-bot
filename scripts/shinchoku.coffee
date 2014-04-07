# Description:
#   進捗 is the most important thing in your life
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   @user_name 進捗どうですか - 進捗を聞く
#   @user_name 進捗ダメです - 進捗ダメなとき

dou = [
  'http://37.media.tumblr.com/03c331376d3a089bf172d6a638c8034e/tumblr_mqlmjcsuvl1sckns5o1_1280.jpg',
  'http://31.media.tumblr.com/0b272dbd4438f6343d7baf738439fb62/tumblr_mr6chnS7aF1sckns5o1_1280.jpg',
  'http://25.media.tumblr.com/d4e46c91264cdef7f576d17da179bb57/tumblr_mr6bbqkvTc1sckns5o1_1280.jpg',
  'http://24.media.tumblr.com/5bcb6ce6bc6b1423319b98c88939ac8f/tumblr_mr22455Myc1sckns5o1_1280.jpg',
  'http://31.media.tumblr.com/5c1a9c5fe0b46eacf999e62917b8db7a/tumblr_mqsx8hSYlY1sckns5o1_r1_1280.jpg',
  'http://37.media.tumblr.com/c47cbed880e821146fb67a6cf1d9993d/tumblr_mqpqr1e07H1sckns5o1_1280.jpg',
  'http://24.media.tumblr.com/6740b47ae8d911f4a842ad670d49b890/tumblr_mqlmv2INSk1sckns5o1_1280.jpg',
  'http://31.media.tumblr.com/2039174ac80fd1f642c5aba63a6b1539/tumblr_mqlmusixZv1sckns5o1_1280.jpg',
  'http://37.media.tumblr.com/58a568d67fc56d38a277a650be2b193b/tumblr_mzyazn4wn11sckns5o1_1280.jpg',
  'http://37.media.tumblr.com/3497ded6d8b569cfe0d0152f8fc6bc9d/tumblr_mzyaeoXEIS1sckns5o1_1280.jpg',
  'http://37.media.tumblr.com/ff63a9cd13f96f6178e8b3327f5ba0eb/tumblr_mwvtwgiQ9L1qbod7ko1_1280.jpg',
  'http://31.media.tumblr.com/2622062d4a612ead2e4e73ae8f9f2a72/tumblr_mwchpmTcee1sckns5o1_1280.jpg',
  'http://24.media.tumblr.com/5cdf42a3a3c404ab64fe78cd74606ad6/tumblr_mr6e67hukP1sckns5o1_500.jpg',
]

dame = [
  'http://25.media.tumblr.com/22dd3547a78fe939688952315a182896/tumblr_myre6nzpQb1sckns5o1_500.jpg',
  'http://37.media.tumblr.com/274cfd2088ec173e3aee2d49ce0b8418/tumblr_mzweoodAvB1sckns5o1_400.jpg',
  'http://37.media.tumblr.com/5db0491b052da7a9cb2f67531cefdcec/tumblr_mzy7feHbDW1sckns5o1_500.jpg',
  'http://24.media.tumblr.com/140678685e639ce9c71cb48c3f77b367/tumblr_mxz5e158Jf1sckns5o1_500.jpg',
  'http://37.media.tumblr.com/67b7fc94b5718a615cafc62870b9861b/tumblr_mxcelutzKN1qec2qpo1_500.png',
  'http://31.media.tumblr.com/65ab983d6e47d0df7c9c4a3822e31d2f/tumblr_mwvmnh2oAE1sckns5o1_500.jpg',
  'http://24.media.tumblr.com/4e92263201dcbb50408d3847ce2b72e0/tumblr_mujnxyNool1sckns5o1_500.jpg',
  'http://24.media.tumblr.com/0812c2f2a5aaa0456243cad84ff93a51/tumblr_mujnxaL9Km1sckns5o1_500.gif',
  'http://24.media.tumblr.com/6bdff62e1ac3c3cb73876bf1af4d52ea/tumblr_mr6d8uQ1nD1sckns5o1_500.jpg',
]

module.exports = (robot) ->
  robot.hear /@\w+.*進捗どうですか.*/i, (msg) ->
    msg.send msg.random dou

  robot.hear /@\w+.*進捗ダメです.*/i, (msg) ->
    msg.send msg.random dame
